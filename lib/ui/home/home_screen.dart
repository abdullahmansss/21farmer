import 'package:farmers21/constants.dart';
import 'package:farmers21/ui/farms/bloc/farms_bloc.dart';
import 'package:farmers21/ui/farms/bloc/farms_events.dart';
import 'package:farmers21/ui/farms/bloc/farms_model.dart';
import 'package:farmers21/ui/farms/bloc/farms_states.dart';
import 'package:farmers21/ui/farms/farm_details/bloc/farm_bloc.dart';
import 'package:farmers21/ui/farms/farm_details/bloc/farm_events.dart';
import 'package:farmers21/ui/farms/farm_details/farm_details_screen.dart';
import 'package:farmers21/ui/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

import '../../completer.dart';
import '../../constants.dart';

final transparentWhiteColor = Colors.white.withOpacity(0.975);
const appBarBottomHeight = 48.0;
const refreshDisplacement = kToolbarHeight + appBarBottomHeight + 16;

enum MenuId {
//  EDIT,
  DELETE,
}

class MenuOption {
  final MenuId id;
  final Text name;
  final Icon icon;

  MenuOption(this.id, String text, IconData icon, Color color)
      : name = Text(text, style: TextStyle(color: color)),
        icon = Icon(icon, color: color);
}

final List<MenuOption> menuOptions = [
//  MenuOption(MenuId.EDIT, 'Edit', Icons.edit, Colors.black87),
  MenuOption(MenuId.DELETE, 'Remove', Icons.close, Colors.red),
];

class HomeScreen extends StatefulWidget {
  static const id = 'home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final MyCompleter completer = MyCompleter();

  MapboxMapController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: BlocBuilder<FarmsBloc, FarmsStates>(
        builder: (BuildContext context, FarmsStates state) {
          List<FarmBody> farms = BlocProvider.of<FarmsBloc>(context).farms;

          print(farms.toString());
          print(state.toString());

          if (state is InitialFarmsState) {
            BlocProvider.of<FarmsBloc>(context).add(FetchFarmsEvent(testToken));
          }
          if (state is ErrorFarmsState) {
            showToast(state.error, false);
          }
          if (state is DeletedState) {
            showToast(state.message, true);
          }
          if (state is! RefreshingState) {
            completer.complete();
          }
          return ModalProgressHUD(
            inAsyncCall: state is LoadingState,
            child: RefreshIndicator(
              onRefresh: () {
                if (state is! LoadingState) BlocProvider.of<FarmsBloc>(context).add(RefreshFarmsEvent(testToken));
                return completer.future;
              },
              child: Padding(
                padding: EdgeInsets.only(
                  top: 15.0,
                  bottom: 15.0,
                ),
                child: buildListView(farms ?? []),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildListView(List<FarmBody> farms) {
    return ListView.builder(
      itemCount: farms.length,
      itemBuilder: (context, index) => buildListItem(context, farms[index]),
    );
  }

  Widget buildListItem(BuildContext context, FarmBody farm) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<FarmBloc>(context).add(SelectFarmEvent(farm));
        Navigator.pushNamed(context, FarmDetailsScreen.id);
      },
      child: Card(
        margin: EdgeInsets.only(
          top: 10.0,
          bottom: 10.0,
          right: 15.0,
          left: 15.0,
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 5.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Stack(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: buildMap(farm.location.coordinates
                      .map((e) => LatLng(
                            e.lat,
                            e.lon,
                          ))
                      .toList()),
                ),
                Container(
                  height: 40,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          color: Colors.black87,
                          child: Row(
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.solidCircle,
                                color: Colors.green,
                                size: 10,
                              ),
                              SizedBox(width: 8),
                              Text(
                                farm.status,
                                style: TextStyle(color: Colors.white),
                              ),
                              Spacer(flex: 1),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 40,
                        color: kWhite,
                      ),
                      Container(
                        color: Colors.black87,
                        child: buildPopupMenuButton(context, farm),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(
                10.0,
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    farm.name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  /*                 Spacer(
                    flex: 1,
                  ),
                  Text(
                    'West Desert, Egypt',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMap(List<LatLng> latLngs) {
    double lat = 0;
    double lon = 0;
    for (LatLng latLng in latLngs) {
      lat += latLng.latitude;
      lon += latLng.longitude;
    }
    lat /= latLngs.length;
    lon /= latLngs.length;
    LatLng avgLatLng = LatLng(lat, lon);
    return MapboxMap(
      styleString: "mapbox://styles/3umduck/cka8pwwsr2px01jo2s0ocuypz",
      onMapCreated: (controller) {
        onMapCreated(controller, latLngs);
      },
      compassEnabled: false,
      myLocationEnabled: false,
      tiltGesturesEnabled: false,
      zoomGesturesEnabled: false,
      scrollGesturesEnabled: false,
      rotateGesturesEnabled: false,
      initialCameraPosition: CameraPosition(
        zoom: 14,
        target: avgLatLng,
      ),
    );
  }

  onMapCreated(MapboxMapController controller, List<LatLng> latLngs) async {
    _controller = controller;
    for (LatLng latLng in latLngs) {
      await _controller.addCircle(drawCircle(latLng));
    }
    calculateLines();
  }

  calculateLines() async {
    await _controller.clearLines();
    if (_controller.circles.toList().length > 1)
      for (int i = 0; i < _controller.circles.length; i++) {
        if (i > 0)
          await _controller.addLine(drawLine([
            _controller.circles.toList()[i - 1].options.geometry,
            _controller.circles.toList()[i].options.geometry,
          ]));
      }
    await _controller.addLine(drawLine([
      _controller.circles.last.options.geometry,
      _controller.circles.first.options.geometry,
    ]));
  }

  CircleOptions drawCircle(LatLng latLng) => CircleOptions(
        circleRadius: 2,
        circleColor: "#00FFAA",
        draggable: false,
        geometry: latLng,
      );

  LineOptions drawLine(List<LatLng> latLngs) => LineOptions(
        lineWidth: 1,
        lineColor: "#00FFAA",
        draggable: false,
        geometry: latLngs,
      );

  PopupMenuButton<MenuId> buildPopupMenuButton(BuildContext context, FarmBody farm) {
    return PopupMenuButton<MenuId>(
      onSelected: (item) {
        switch (item) {
//          case MenuId.EDIT:
//            Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateFarmScreen(farm)));
//            break;
          case MenuId.DELETE:
            BlocProvider.of<FarmsBloc>(context).add(DeleteFarmEvent(testToken, farm.id));
            break;
        }
      },
      icon: Icon(
        Icons.more_vert,
        size: 24,
        color: Colors.white,
      ),
      itemBuilder: (context) => menuOptions
          .map(
            (e) => PopupMenuItem<MenuId>(
              value: e.id,
              child: ListTile(
                leading: e.icon,
                title: e.name,
              ),
            ),
          )
          .toList(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: true,
      actions: <Widget>[
        IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
          },
          icon: Icon(
            Icons.person,
            color: kWhite,
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(appBarBottomHeight),
        child: Container(
          height: appBarBottomHeight,
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          alignment: Alignment.topLeft,
          child: Text(
            'My Farms',
            style: TextStyle(
              color: kWhite,
              fontSize: 18,
            ),
          ),
        ),
      ),
      elevation: 5,
      title: Text(
        '21 Farmers',
        style: TextStyle(
          fontSize: 22,
          color: kWhite,
        ),
      ),
    );
  }
}
