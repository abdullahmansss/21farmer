import 'dart:async';

import 'package:farmers21/constants.dart';
import 'package:farmers21/ui/home/home_screen.dart';
import 'package:farmers21/ui/on_board/on_board_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      SharedPreferences.getInstance().then((value) {
        testToken = value.getString('token');
        Navigator.pushReplacementNamed(
            context,
            testToken != null && testToken.isNotEmpty
                ? HomeScreen.id
                : OnBoardScreen.id);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kNewTeal,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30.0,
          ),
          child: Image.asset(
            'assets/main_logo.jpg',
          ),
        ),
      ),
    );
  }
}
