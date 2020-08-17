import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class MapWidget extends StatefulWidget {
  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  MapboxMapController _controller;

  onMapCreated(MapboxMapController controller) {
    _controller = controller;
  }

  onMapClicked(Point<double> point, LatLng latLng) async {
    await _controller.addCircle(drawCircle(latLng));
    calculateLines();
  }

  undo() async {
    if (_controller.circles.isNotEmpty) {
      await _controller.removeCircle(_controller.circles.last);
      calculateLines();
    }
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
        circleRadius: 20,
        circleColor: "#00FFAA",
        draggable: true,
        geometry: latLng,
      );

  LineOptions drawLine(List<LatLng> latLngs) => LineOptions(
        lineWidth: 5,
        lineColor: "#00FFAA",
        draggable: false,
        geometry: latLngs,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: undo,
      ),
      body: buildMap(),
    );
  }

  MapboxMap buildMap() {
    return MapboxMap(
      styleString: "mapbox://styles/3umduck/cka8pwwsr2px01jo2s0ocuypz",
      onMapCreated: onMapCreated,
      onMapClick: onMapClicked,
      initialCameraPosition: CameraPosition(
        zoom: 18,
        target: LatLng(31, 30),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
