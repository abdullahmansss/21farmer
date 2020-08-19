import 'package:farmers21/ui/devices/bloc/devices_model.dart';
import 'package:farmers21/ui/devices/device_details/bloc/device_events.dart';
import 'package:farmers21/ui/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import '../../../completer.dart';
import '../../../constants.dart';
import 'bloc/device_bloc.dart';
import 'bloc/device_states.dart';

class DeviceDetailsScreen extends StatefulWidget {
  @override
  _DeviceDetailsScreenState createState() => _DeviceDetailsScreenState();
}

class _DeviceDetailsScreenState extends State<DeviceDetailsScreen>
{
  final MyCompleter completer = MyCompleter();

  MapboxMapController _controller;

  @override
  void dispose()
  {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final DevicesBody devicesBody =
        BlocProvider.of<DeviceBloc>(context).deviceBody;
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: buildAppBar(context, devicesBody),
      body: BlocBuilder<DeviceBloc, DeviceStates>(
        builder: (context, state) {
          if (state is ErrorDeviceState) {
            showToast(state.error, false);
          }
          if (state is! RefreshingDeviceState) {
            completer.complete();
          }
          final device = BlocProvider.of<DeviceBloc>(context).deviceBody;
          return ModalProgressHUD(
            inAsyncCall: state is LoadingDeviceState,
            child: RefreshIndicator(
              onRefresh: () {
                if (state is! LoadingDeviceState) {
                  BlocProvider.of<DeviceBloc>(context)
                      .add(RefreshDeviceEvent(testToken, devicesBody.id));
                }
                return completer.future;
              },
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
                            child: buildMap(LatLng(
                              device.location.lat,
                              device.location.lon,
                            )),
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
                          device.dataBodies.last.dateTime,
                          children: [
                            buildRow('Air Temperature',
                                '${device.dataBodies.last.airTmp}', '°C'),
                            buildDivider(),
                            buildRow('Air Humidity',
                                '${device.dataBodies.last.airHum}', '%'),
                            buildDivider(),
                            buildRow('LUX', '${device.dataBodies.last.airLux}',
                                'lux'),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        buildContainer(
                          'Soil',
                          device.dataBodies.last.dateTime,
                          children: [
                            buildRow('Soil Moisture',
                                '${device.dataBodies.last.soilMoist}', '%'),
                            buildDivider(),
                            buildRow('Soil Temperature',
                                '${device.dataBodies.last.soilTmp}', '°C',
                                dotColor: Colors.yellow),
                            buildDivider(),
                            buildRow(
                                'Salinity',
                                '${device.dataBodies.last.soilSalinity}',
                                'mg/L'),
                            buildDivider(),
                            buildRow('EC', '${device.dataBodies.last.soilEC}',
                                'ds/m',
                                dotColor: Colors.red),
                            buildDivider(),
                            buildRow('TDS', '${device.dataBodies.last.soilTDS}',
                                'mg/L'),
                            buildDivider(),
                            buildRow('Nitrogen',
                                '${device.dataBodies.last.soilN}', 'ppm',
                                hint: '(N)'),
                            buildDivider(),
                            buildRow('Phosphorus',
                                '${device.dataBodies.last.soilP}', 'ppm',
                                hint: '(P)'),
                            buildDivider(),
                            buildRow('Pottassium',
                                '${device.dataBodies.last.soilK}', 'ppm',
                                hint: '(K)'),
                            buildDivider(),
                            buildRow(
                                'PH', '${device.dataBodies.last.soilPH}', 'PH'),
                          ],
                        ),
                      ],
                    ),
                  ],
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

  Widget buildRow(String title, String value, String unit,
      {Color dotColor, String hint}) {
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

  Widget buildAppBar(BuildContext context, DevicesBody device) {
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
        device.name,
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