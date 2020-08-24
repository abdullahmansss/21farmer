//import 'package:flutter/material.dart';
//import 'package:mapbox_gl/mapbox_gl.dart';
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(home: MapWidget());
//  }
//}
//
//class MapWidget extends StatefulWidget {
//  @override
//  _MapWidgetState createState() => _MapWidgetState();
//}
//
//class _MapWidgetState extends State<MapWidget> {
//  final CameraPosition _kInitialPosition;
//  final CameraTargetBounds _cameraTargetBounds;
//  static double defaultZoom = 12.0;
//
//  CameraPosition _position;
//  MapboxMapController mapController;
//  bool _isMoving = true;
//  bool _compassEnabled = true;
//  MinMaxZoomPreference _minMaxZoomPreference = const MinMaxZoomPreference(8.0, 18.0);
//  String _styleString = "mapbox://styles/mapbox/streets-v11";
//  bool _rotateGesturesEnabled = true;
//  bool _scrollGesturesEnabled = true;
//  bool _tiltGesturesEnabled = true;
//  bool _zoomGesturesEnabled = true;
//  bool _myLocationEnabled = true;
//  MyLocationTrackingMode _myLocationTrackingMode = MyLocationTrackingMode.None;
//
//  _MapWidgetState._(this._kInitialPosition, this._position, this._cameraTargetBounds);
//
//  static CameraPosition _getCameraPosition() {
//    final latLng = LatLng(40.7864, -119.2065);
//    return CameraPosition(
//      target: latLng,
//      zoom: defaultZoom,
//    );
//  }
//
//  factory _MapWidgetState() {
//    CameraPosition cameraPosition = _getCameraPosition();
//
//    final cityBounds = LatLngBounds(
//      southwest: LatLng(40.7413, -119.267),
//      northeast: LatLng(40.8365, -119.1465),
//    );
//
//    return _MapWidgetState._(cameraPosition, cameraPosition, CameraTargetBounds(cityBounds));
//  }
//
//  void _onMapChanged() {
//    setState(() {
//      _extractMapInfo();
//    });
//  }
//
//  @override
//  void dispose() {
//    if (mapController != null) {
//      mapController.removeListener(_onMapChanged);
//    }
//    super.dispose();
//  }
//
//  void _extractMapInfo() {
//    _position = mapController.cameraPosition;
//    _isMoving = mapController.isCameraMoving;
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      child: _buildMapBox(context),
//    );
//  }
//
//  MapboxMap _buildMapBox(BuildContext context) {
//    return MapboxMap(
//        onMapCreated: onMapCreated,
//        initialCameraPosition: this._kInitialPosition,
//        trackCameraPosition: true,
//        compassEnabled: _compassEnabled,
//        cameraTargetBounds: _cameraTargetBounds,
//        minMaxZoomPreference: _minMaxZoomPreference,
//        styleString: _styleString,
//        rotateGesturesEnabled: _rotateGesturesEnabled,
//        scrollGesturesEnabled: _scrollGesturesEnabled,
//        tiltGesturesEnabled: _tiltGesturesEnabled,
//        zoomGesturesEnabled: _zoomGesturesEnabled,
//        myLocationEnabled: _myLocationEnabled,
//        myLocationTrackingMode: _myLocationTrackingMode,
//        onCameraTrackingDismissed: () {
//          this.setState(() {
//            _myLocationTrackingMode = MyLocationTrackingMode.None;
//          });
//        });
//  }
//
//  void onMapCreated(MapboxMapController controller) {
//    mapController = controller;
//    mapController.addListener(_onMapChanged);
//    _extractMapInfo();
//    setState(() {});
//  }
//}
