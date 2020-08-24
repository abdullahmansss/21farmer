//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
//
//import '../constants.dart';
//
//class TestDialog extends StatelessWidget {
//  final String message;
//
//  TestDialog(this.message);
//
//  @override
//  Widget build(BuildContext context) {
//    return SimpleDialog(
//      elevation: 5.0,
//      titlePadding: EdgeInsets.all(0),
//      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//      contentPadding: EdgeInsets.all(0),
//      title: Padding(
//        padding: const EdgeInsets.all(8.0),
//        child: Text(
//          'نتيجة الإختبار',
//          textAlign: TextAlign.center,
//          style: TextStyle(
//            color: kTeal,
//          ),
//        ),
//      ),
//      children: <Widget>[
//        Column(
//          crossAxisAlignment: CrossAxisAlignment.center,
//          children: <Widget>[
//            SvgPicture.asset(
//              getAsset('success', Extensions.SVG),
//              height: 200,
//              width: 200,
//              fit: BoxFit.cover,
//            ),
//            marginVertical(20),
//            Padding(
//              padding: const EdgeInsets.all(16.0),
//              child: Text(
//                message,
//                style: TextStyle(
//                  color: kBlack54,
//                  fontSize: 14,
//                ),
//              ),
//            ),
//            ClipRRect(
//              borderRadius: BorderRadius.only(
//                  bottomLeft: Radius.circular(20),
//                  bottomRight: Radius.circular(20)),
//              child: FlatButton(
//                color: kBlue,
//                padding: EdgeInsets.all(10),
//                onPressed: () async {
//                  Navigator.pop(context);
//                  Navigator.pop(context);
//                },
//                child: Center(
//                  child: Text(
//                    'تم',
//                    style: TextStyle(
//                      color: kWhite,
//                    ),
//                  ),
//                ),
//              ),
//            ),
//          ],
//        ),
//      ],
//    );
//  }
//}
