import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

const kWhite = Colors.white;
const kBlack = Colors.black;
const kBlack8 = Color(0x08000000);
const kBlack12 = Colors.black12;
const kBlack38 = Colors.black38;
const kBlack54 = Colors.black54;

const kTeal = Color(0xFF00BF9D);
const kNewTeal = Color(0xFF00cc99);
const kOffWhite = Color(0xFFF7F8FA);
const kBlue = Color(0xFF3498DB);
const kGray = Color(0xFFE2E3E5);
const kDarkBlue = Color(0xFF166194);
const kDarkBlue2 = Color(0xFF124569);
const kGreen = Color(0xFF40B25A);
const kBackgroundWhite = Color(0xFFF4F4F4);

String testToken = '';

showToast(String text, bool success) {
  Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: success ? Colors.green : Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}

void navigateTo(BuildContext context, Widget widget) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
  );
}

void navigateAndFinish(BuildContext context, Widget widget) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
    (Route<dynamic> route) => false,
  );
}