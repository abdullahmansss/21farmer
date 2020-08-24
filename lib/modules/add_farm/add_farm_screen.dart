//import 'dart:math';
//
//import 'file:///D:/Softagi/Projects/Rootair/farmer/lib/shared/components/constants.dart';
//import 'package:farmers21/ui/add_farm/bloc/add_farm_event.dart';
//import 'package:farmers21/ui/farms/bloc/farms_bloc.dart';
//import 'package:farmers21/ui/farms/bloc/farms_events.dart';
//import 'package:farmers21/ui/farms/bloc/farms_model.dart';
//import 'package:farmers21/ui/home/home_screen.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:flutter_icons/flutter_icons.dart';
//import 'package:mapbox_gl/mapbox_gl.dart';
//import 'package:modal_progress_hud/modal_progress_hud.dart';
//
//import 'bloc/add_farm_bloc.dart';
//import 'bloc/add_farm_state.dart';
//
//class AddFarmScreen extends StatefulWidget {
//  static const String id = 'add_farm';
//
//  @override
//  _AddFarmScreenState createState() => _AddFarmScreenState();
//}
//
//class _AddFarmScreenState extends State<AddFarmScreen> {
//  final name = TextEditingController();
//  MapboxMapController _controller;
//
//  @override
//  void dispose() {
//    _controller.dispose();
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return BlocBuilder<AddFarmBloc, AddFarmState>(
//      builder: (BuildContext context, AddFarmState state) {
//        if (state is ErrorFarmState) {
//          showToast(state.error, false);
//        }
//        return ModalProgressHUD(
//          inAsyncCall: state is LoadingFarmState,
//          child: Scaffold(
//            floatingActionButton: RotatedBox(
//              quarterTurns: 1,
//              child: FloatingActionButton.extended(
//                onPressed: undo,
//                label: Text('Undo'),
//              ),
//            ),
//            extendBodyBehindAppBar: true,
//            appBar: buildAppBar(context),
//            extendBody: true,
//            body: Stack(
//              children: <Widget>[
//                buildMap(),
//                Align(
//                  alignment: Alignment.bottomCenter,
//                  child: Container(
//                    decoration: BoxDecoration(
//                      color: Colors.white,
//                      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//                    ),
//                    child: Padding(
//                      padding: const EdgeInsets.only(left: 8, top: 0, bottom: 8, right: 56.0 + 16.0),
//                      child: TextFormField(
//                        controller: name,
//                        style: TextStyle(
//                          color: Colors.black,
//                          fontWeight: FontWeight.w500,
//                          letterSpacing: 2,
//                          fontSize: 18,
//                        ),
//                        decoration: InputDecoration(
//                          hintText: 'Farm Name',
//                          hintStyle: TextStyle(
//                            color: Colors.black38,
//                            fontWeight: FontWeight.w300,
//                          ),
//                          enabledBorder: UnderlineInputBorder(
//                            borderSide: BorderSide(width: 1, color: Colors.black12),
//                          ),
//                          focusedBorder: UnderlineInputBorder(
//                            borderSide: BorderSide(width: 4, color: Colors.black),
//                          ),
//                        ),
//                      ),
//                    ),
//                  ),
//                ),
//              ],
//            ),
//          ),
//        );
//      },
//    );
//  }
//
//  Widget buildAppBar(BuildContext context) {
//    return PreferredSize(
//      preferredSize: Size.fromHeight(kToolbarHeight * 1.5),
//      child: Container(
//        decoration: BoxDecoration(
//          color: transparentWhiteColor,
//          border: Border(
//            bottom: BorderSide(width: 1, color: Colors.black12),
//          ),
//        ),
//        padding: EdgeInsets.only(top: 16),
//        child: AppBar(
//          brightness: Brightness.light,
//          automaticallyImplyLeading: false,
//          actions: <Widget>[
//            FlatButton(
//              onPressed: () {
//                if (name.text.isEmpty) {
//                  showToast('Enter Field Name', false);
//                  return;
//                }
//                if (_controller.circles.length < 3) {
//                  showToast('Select Field Coordinates', false);
//                  return;
//                }
//                final list = _controller.circles.toList().map((e) {
//                  print('lat1: ${e.options.geometry.latitude}, lon1: ${e.options.geometry.longitude}');
//                  return Coordinate.custom(
//                    e.options.geometry.longitude,
//                    e.options.geometry.latitude,
//                  );
//                }).toList();
//                list.map((e) {
//                  print('lat2: ${e.lat}, lon2: ${e.lon}');
//                }).toList();
//                BlocProvider.of<AddFarmBloc>(context).add(CreateFarmEvent(
//                  token: testToken,
//                  name: name.text,
//                  onSuccess: () {
//                    BlocProvider.of<FarmsBloc>(context).add(FetchFarmsEvent(testToken));
//                    Navigator.pop(context);
//                  },
//                  coordinates: list,
//                ));
//              },
//              child: Text(
//                'DONE',
//                style: TextStyle(fontSize: 18, color: Colors.black, letterSpacing: 2),
//              ),
//            ),
//          ],
//          backgroundColor: Colors.transparent,
//          elevation: 0,
//          leading: IconButton(
//            icon: Icon(
//              FlutterIcons.angle_left_faw,
//              color: Colors.black,
//              size: 48,
//            ),
//            onPressed: () {
//              Navigator.pop(context);
//            },
//          ),
//          title: Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              Text(
//                'Select Farm Coordinates',
//                style: TextStyle(fontSize: 12, color: Colors.black),
//              ),
//              Text(
//                'Add New Farm',
//                style: TextStyle(color: Colors.black, fontSize: 24),
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//
//  Widget buildMap() {
//    return MapboxMap(
//      styleString: "mapbox://styles/3umduck/cka8pwwsr2px01jo2s0ocuypz",
//      onMapCreated: onMapCreated,
//      onMapClick: onMapClicked,
//      initialCameraPosition: CameraPosition(
//        zoom: 18,
//        target: LatLng(31, 30),
//      ),
//    );
//  }
//
//  onMapCreated(MapboxMapController controller) {
//    _controller = controller;
//  }
//
//  onMapClicked(Point<double> point, LatLng latLng) async {
//    await _controller.addCircle(drawCircle(latLng));
//    calculateLines();
//  }
//
//  undo() async {
//    if (_controller.circles.isNotEmpty) {
//      await _controller.removeCircle(_controller.circles.last);
//      calculateLines();
//    }
//  }
//
//  calculateLines() async {
//    await _controller.clearLines();
//    if (_controller.circles.toList().length > 1)
//      for (int i = 0; i < _controller.circles.length; i++) {
//        if (i > 0)
//          await _controller.addLine(drawLine([
//            _controller.circles.toList()[i - 1].options.geometry,
//            _controller.circles.toList()[i].options.geometry,
//          ]));
//      }
//    await _controller.addLine(drawLine([
//      _controller.circles.last.options.geometry,
//      _controller.circles.first.options.geometry,
//    ]));
//  }
//
//  CircleOptions drawCircle(LatLng latLng) => CircleOptions(
//        circleRadius: 20,
//        circleColor: "#00FFAA",
//        draggable: false,
//        geometry: latLng,
//      );
//
//  LineOptions drawLine(List<LatLng> latLngs) => LineOptions(
//        lineWidth: 5,
//        lineColor: "#00FFAA",
//        draggable: false,
//        geometry: latLngs,
//      );
//}
