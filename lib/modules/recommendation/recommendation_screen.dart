import 'package:farmers21/shared/components/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class RecommendationScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Recommendation',
          style: TextStyle(
            color: kWhite,
            fontSize: 20,
          ),
        ),
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
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Text(
          'Recommendation Screen Soon'
        ),
      ),
    );
  }
}