import 'package:farmers21/models/fields/fields_model.dart';
import 'package:farmers21/modules/field/field_screen.dart';
import 'package:farmers21/modules/fields/cubit/cubit.dart';
import 'package:farmers21/modules/fields/cubit/states.dart';
import 'package:farmers21/modules/home/home_screen.dart';
import 'package:farmers21/shared/components/constants.dart';
import 'package:farmers21/shared/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class FieldsScreen extends StatefulWidget
{
  final String token,id,title;

  FieldsScreen({this.token, this.id, this.title});

  @override
  _FieldsScreenState createState() => _FieldsScreenState();
}

class _FieldsScreenState extends State<FieldsScreen>
{
  MapboxMapController _controller;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => di<FieldsCubit>()
        ..getFields(
          token: widget.token,
          url: 'field/list/',
          id: widget.id,
        ),
      child: BlocConsumer<FieldsCubit, FieldsStates>(
        listener: (BuildContext context, FieldsStates state) {
          if (state is ErrorFieldsState) {
            showToast(state.error, false);
            print('------------------ Error : ${state.error}');
          }
        },
        builder: (BuildContext context, FieldsStates state) {
          return Scaffold(
            backgroundColor: Color(0xFFEEEEEE),
            appBar: buildAppBar(context, widget.title),
            body: ModalProgressHUD(
              inAsyncCall: state is LoadingFieldsState,
              child: Visibility(
                visible: state is! LoadingFieldsState,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  child: buildListView(FieldsCubit.get(context).fieldsModel.body),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildListView(List<FieldDetailsModel> fields) {
    return ListView.builder(
      itemCount: fields.length,
      itemBuilder: (context, index) => buildListItem(context, fields[index]),
    );
  }

  Widget buildAppBar(BuildContext context, String title) {
    return AppBar(
      automaticallyImplyLeading: false,
/*      actions: <Widget>[
        IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
          },
          icon: Icon(
            Icons.person,
            color: kWhite,
          ),
        ),
      ],*/
      elevation: 5,
      leading: IconButton(
        icon: Icon(
          FlutterIcons.angle_left_faw,
          color: kWhite,
          size: 22,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        title,
        style: TextStyle(
          color: kWhite,
          fontSize: 20,
        ),
      ),
    );
  }

  Widget buildListItem(BuildContext context, FieldDetailsModel field) {
    return GestureDetector(
      onTap: ()
      {
        navigateTo(context, FieldScreen(
          title: field.field_name,
          id: field.id,
          crop: field.crop,
          token: widget.token,
        ));
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
                  child: Image(
                    image: NetworkImage(
                        'https://www.xda-developers.com/files/2019/06/google-maps-india.jpg'),
                    fit: BoxFit.cover,
                  ),
                  /*child: buildMap(field.location.coordinates
                      .map((e) => LatLng(
                            e.lat,
                            e.lon,
                          ))
                      .toList()),*/
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
                                field.status,
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
                        child: buildPopupMenuButton(context, field),
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
                    field.field_name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  /*Spacer(
                    flex: 1,
                  ),
                  Text(
                    'West Desert, Egypt',
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),*/
                ],
              ),
            ),
          ],
        ),
      ),
      /*Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: buildMap(field.location.coordinates
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
                                  field.status,
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
                          child: buildPopupMenuButton(context, field),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: <Widget>[
                Text(
                  field.name,
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
                Spacer(
                  flex: 1,
                ),
                Text(
                  'West Desert, Egypt',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),*/
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

  PopupMenuButton<MenuId> buildPopupMenuButton(BuildContext context, FieldDetailsModel field) {
    return PopupMenuButton<MenuId>(
      onSelected: (item) {
        switch (item) {
//          case MenuId.EDIT:
//            Navigator.push(
//              context,
//              MaterialPageRoute(
//                builder: (context) => UpdateFieldScreen(
//                    field, BlocProvider.of<FarmBloc>(context).farm),
//              ),
//            );
//            break;
          case MenuId.DELETE:
            //BlocProvider.of<FarmBloc>(context).add(DeleteFieldEvent(testToken, field.id));
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
}
