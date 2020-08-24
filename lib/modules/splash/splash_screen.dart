import 'dart:async';

import 'file:///D:/Softagi/Projects/Rootair/farmer/lib/shared/components/constants.dart';
import 'package:farmers21/modules/home/home_screen.dart';
import 'package:farmers21/modules/on_board/on_board_screen.dart';
import 'package:farmers21/shared/global/cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget
{
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      print(GlobalCubit.get(context).isUser);
      navigateTo(context, GlobalCubit.get(context).isUser ? HomeScreen(GlobalCubit.get(context).userModel.token) : OnBoardScreen());
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
