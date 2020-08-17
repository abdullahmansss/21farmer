//import 'dart:async' show Timer;
//
//import 'package:farmers21/ui/welcome/welcome_page.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//
//class SplashPage extends StatefulWidget {
//  static const id = 'splash';
//
//  @override
//  _SplashPage createState() => _SplashPage();
//}
//
//class _SplashPage extends State<StatefulWidget> {
//  @override
//  void initState() {
//    super.initState();
//    startTimer();
//  }
//
//  startTimer() async {
//    SharedPreferences prefs = await SharedPreferences.getInstance();
//    bool b = prefs.containsKey('token')
//        ? prefs.getString('token').isNotEmpty
//        : false;
//    Timer(
//      Duration(seconds: 3),
//      () {
//        Navigator.pushReplacement(
//          context,
//          MaterialPageRoute(builder: (context) => WelcomePage()),
////              builder: (context) => b ? WelcomePage() : MainScreen()),
//        );
//      },
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Theme(
//      data: ThemeData.light(),
//      child: Scaffold(
//        extendBodyBehindAppBar: true,
//        body: Stack(
//          children: <Widget>[
////            Container(
////              alignment: Alignment.bottomCenter,
////              child: Image.asset('assets/spalsh_back.png'),
////              color: kBlue,
////            ),
//            Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                Expanded(
//                  child: Container(
//                    margin: EdgeInsets.symmetric(horizontal: 30.0),
//                    child: Image(
//                      image: AssetImage('assets/logo.png'),
//                    ),
//                  ),
//                ),
//                ClipRRect(
//                  borderRadius: BorderRadius.only(
//                      topLeft: Radius.circular(20.0),
//                      topRight: Radius.circular(20.0)),
//                )
//              ],
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
