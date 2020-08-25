import 'package:farmers21/modules/devices/devices_screen.dart';
import 'package:farmers21/modules/home/home_screen.dart';
import 'package:farmers21/modules/recommendation/recommendation_screen.dart';
import 'package:farmers21/shared/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class FieldScreen extends StatefulWidget
{
  final String id,title,crop,token;

  const FieldScreen({this.id, this.title, this.crop,this.token}) ;

  @override
  _FieldScreenState createState() => _FieldScreenState();
}

class _FieldScreenState extends State<FieldScreen> with SingleTickerProviderStateMixin
{
  TabController tabController;
  MapboxMapController _controller;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, initialIndex: 0, length: 3);
  }

  @override
  void dispose() {
    tabController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: buildAppBar(context, widget.title, widget.crop),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.blue,
                          width: 1,
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Spacer(
                            flex: 1,
                          ),
                          Container(
                            width: 1,
                            color: Colors.blue,
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Container(
                            width: 1,
                            color: Colors.blue,
                          ),
                          Spacer(
                            flex: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  TabBar(
                    labelPadding: EdgeInsets.all(0),
                    indicatorPadding: EdgeInsets.all(0),
                    controller: tabController,
                    labelStyle: TextStyle(
                      letterSpacing: 2,
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                    ),
                    unselectedLabelColor: Colors.blue,
                    labelColor: Colors.white,
                    indicator: BoxDecoration(
                      color: Colors.blue,
                    ),
                    tabs: <Widget>[
                      Tab(text: 'Day'),
                      Tab(text: 'Week'),
                      Tab(text: 'Month'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: FlatButton(
                padding: EdgeInsets.all(0),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onPressed: ()
                {
                  navigateTo(context, DevicesScreen(
                    id: widget.id,
                    title: widget.title,
                    token: widget.token,
                  ));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'View Devices',
                      style: TextStyle(
                        color: Colors.blue,
                        letterSpacing: 1.5,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(FlutterIcons.angle_right_faw,
                        color: Colors.blue),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
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
/*                    child: buildMap(field.location.coordinates
                        .map((e) => LatLng(
                      e.lat,
                      e.lon,
                    ))
                        .toList()),*/
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
                onPressed: ()
                {
                  /*Navigator.push(context, MaterialPageRoute(
                    builder: (ctx) => LineChartSample1(),
                  ));*/
                  navigateTo(context, RecommendationScreen());
                },
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        'Recommendations',
                        style:
                        TextStyle(color: Colors.white, fontSize: 18),
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
                  children: [
                    buildRow('Air Temperature', '22.5', '°C'),
                    buildDivider(),
                    buildRow('Air Humidity', '61', '%'),
                    buildDivider(),
                    buildRow('LUX', '7940', 'lux'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                buildContainer(
                  'Soil',
                  children: [
                    buildRow('Soil Moisture', '30', '%'),
                    buildDivider(),
                    buildRow('Soil Temperature', '22.5', '°C',
                        dotColor: Colors.yellow),
                    buildDivider(),
                    buildRow('Salinity', '54', 'mg/L'),
                    buildDivider(),
                    buildRow('EC', '10.2', 'ds/m', dotColor: Colors.red),
                    buildDivider(),
                    buildRow('TDS', '22.5', 'mg/L'),
                    buildDivider(),
                    buildRow('Nitrogen', '1.4', 'ppm', hint: '(N)'),
                    buildDivider(),
                    buildRow('Phosphorus', '0.54', 'ppm', hint: '(P)'),
                    buildDivider(),
                    buildRow('Pottassium', '3', 'ppm', hint: '(K)'),
                    buildDivider(),
                    buildRow('PH', '22.5', 'PH'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContainer(String title, {List<Widget> children}) {
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
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(color: Colors.white),
                ),
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    'min',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),
                  ),
                  Text(
                    value,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                children: <Widget>[
                  Text(
                    'avg',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),
                  ),
                  Text(
                    value,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                children: <Widget>[
                  Text(
                    'max',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),
                  ),
                  Text(
                    value,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
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

  Widget buildAppBar(BuildContext context, String title, String crop) {
    return AppBar(
      automaticallyImplyLeading: false,
      actions: <Widget>[
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              crop,
              style: TextStyle(
                fontSize: 16,
                color: kWhite,
              ),
            ),
          ),
        ),
      ],
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

  Widget buildListItem(BuildContext context) {
    return Padding(
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
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.network(
                      'https://image.shutterstock.com/image-photo/bright-spring-view-cameo-island-260nw-1048185397.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          color: Colors.black26,
                          child: Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 5,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Good',
                                style: TextStyle(color: Colors.white),
                              ),
                              Spacer(flex: 1),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Container(
                        color: Colors.black26,
                        child: buildPopupMenuButton(),
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
                'Farm Name',
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
}