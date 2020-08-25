import 'package:farmers21/modules/device/cubit/cubit.dart';
import 'package:farmers21/modules/device/cubit/states.dart';
import 'package:farmers21/modules/home/home_screen.dart';
import 'package:farmers21/shared/components/constants.dart';
import 'package:farmers21/shared/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class DeviceDetailsScreen extends StatefulWidget
{
  final String token,title,id;

  const DeviceDetailsScreen({this.token, this.title, this.id});

  @override
  _DeviceDetailsScreenState createState() => _DeviceDetailsScreenState();
}

class _DeviceDetailsScreenState extends State<DeviceDetailsScreen>
{
  MapboxMapController _controller;

  @override
  void dispose()
  {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    return BlocProvider(
      create: (BuildContext context) => di<DeviceReadCubit>()
        ..getDeviceReads(
          token: widget.token,
          url: 'iot-device/device/',
          id: widget.id,
        ),
      child: BlocConsumer<DeviceReadCubit, DeviceReadStates>(
        listener: (BuildContext context, DeviceReadStates state)
        {
          if (state is ErrorDeviceReadState) {
            showToast(state.error, false);
            print('------------------ Error : ${state.error}');
          }
          if (state is SuccessDeviceReadState) {
            final model = DeviceReadCubit.get(context).readsModel.body.data;

            print('------------------ Success : ${model.toJson()}');
          }
        },
        builder: (BuildContext context, DeviceReadStates state)
        {
          final model = DeviceReadCubit.get(context).readsModel.body.data;

          return Scaffold(
            backgroundColor: Color(0xFFEEEEEE),
            appBar: buildAppBar(context, widget.title),
            body: ModalProgressHUD(
              inAsyncCall: state is LoadingDeviceReadState,
              child: Visibility(
                visible: state is! LoadingDeviceReadState,
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: <Widget>[
                          ClipRRect(
                            child: AspectRatio(
                              aspectRatio: 16 / 9,
                              child: Image(
                                image: NetworkImage(
                                    'https://www.xda-developers.com/files/2019/06/google-maps-india.jpg'),
                                fit: BoxFit.cover,
                              ),
                              /*child: buildMap(LatLng(
                                device.location.lat,
                                device.location.lon,
                              )),*/
                            ),
                            borderRadius: BorderRadius.circular(10),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                          ),
                          /*Align(
                            alignment: Alignment.topRight,
                            child: buildPopupMenuButton(),
                          ),*/
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: FlatButton(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          padding: EdgeInsets.all(0),
                          color: Colors.blue,
                          onPressed: () {
                            //todo
                          },
                          child: Container(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(
                                child: Text(
                                  'Recommendations',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          buildContainer(
                            'Weather',
                            model.hardwareDateTime,
                            children: [
                              buildRow('Air Temperature',
                                  '${model.data.AIR_TEMP}', '°C'),
                              buildDivider(),
                              buildRow('Air Humidity',
                                  '${model.data.AIR_HUM}', '%'),
                              buildDivider(),
                              buildRow('LUX', '${model.data.AIR_LUX}',
                                  'lux'),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          buildContainer(
                            'Soil',
                            model.hardwareDateTime,
                            children: [
                              buildRow('Soil Moisture',
                                  '${model.data.SOIL_MOISTURE}', '%'),
                              buildDivider(),
                              buildRow('Soil Temperature',
                                  '${model.data.SOIL_TEMP}', '°C',
                                  dotColor: Colors.yellow),
                              buildDivider(),
                              buildRow(
                                  'Salinity',
                                  '${model.data.SOIL_SALINITY}',
                                  'mg/L'),
                              buildDivider(),
                              buildRow('EC', '${model.data.SOIL_EC}',
                                  'ds/m',
                                  dotColor: Colors.red),
                              buildDivider(),
                              buildRow('TDS', '${model.data.SOIL_TDS}',
                                  'mg/L'),
                              buildDivider(),
                              buildRow('Nitrogen',
                                  '${0}', 'ppm',
                                  hint: '(N)'),
                              buildDivider(),
                              buildRow('Phosphorus',
                                  '${0}', 'ppm',
                                  hint: '(P)'),
                              buildDivider(),
                              buildRow('Pottassium',
                                  '${0}', 'ppm',
                                  hint: '(K)'),
                              buildDivider(),
                              buildRow(
                                  'PH', '${0}', 'PH'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildContainer(String title, String date, {List<Widget> children})
  {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.teal[800], width: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              color: Colors.teal[800],
              child: Row(
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
              padding: EdgeInsets.all(16),
            ),
            for (Widget child in children) child
          ],
        ),
      ),
    );
  }

  Divider buildDivider() {
    return Divider(
      color: Colors.black12,
      thickness: 1,
      height: 0,
    );
  }

  Widget buildRow(String title, String value, String unit, {Color dotColor, String hint}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Icon(
            FontAwesomeIcons.solidCircle,
            color: dotColor ?? Colors.transparent,
            size: 10,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.black45),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            hint ?? '',
            style: TextStyle(color: Colors.black26),
          ),
          Spacer(
            flex: 1,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                value == '0' ? '--' : value,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                unit,
                style: TextStyle(
                    color: Colors.black26, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildAppBar(BuildContext context, String title) {
    return AppBar(
      automaticallyImplyLeading: false,
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

  PopupMenuButton<MenuOption> buildPopupMenuButton() {
    return PopupMenuButton<MenuOption>(
      onSelected: (item) {},
      icon: Icon(
        Icons.more_vert,
        size: 24,
        color: Colors.white,
      ),
      itemBuilder: (context) => menuOptions
          .map(
            (e) => PopupMenuItem<MenuOption>(
              child: ListTile(
                leading: e.icon,
                title: e.name,
              ),
            ),
          )
          .toList(),
    );
  }

  Widget buildMap(LatLng latLng) {
    return MapboxMap(
      styleString: "mapbox://styles/3umduck/cka8pwwsr2px01jo2s0ocuypz",
      onMapCreated: (controller) {
        onMapCreated(controller, latLng);
      },
      compassEnabled: false,
      myLocationEnabled: false,
      tiltGesturesEnabled: false,
      zoomGesturesEnabled: false,
      scrollGesturesEnabled: false,
      rotateGesturesEnabled: false,
      initialCameraPosition: CameraPosition(
        zoom: 14,
        target: latLng,
      ),
    );
  }

  onMapCreated(MapboxMapController controller, LatLng latLng) async {
    _controller = controller;
    await _controller.addCircle(drawCircle(latLng));
  }

  CircleOptions drawCircle(LatLng latLng) => CircleOptions(
        circleRadius: 2,
        circleColor: "#00FFAA",
        draggable: false,
        geometry: latLng,
      );
}