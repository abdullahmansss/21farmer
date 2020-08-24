import 'package:flutter/material.dart';

import 'constants.dart';

class ReusableButton extends StatelessWidget {
  ReusableButton(
      {@required this.cardText, @required this.color, @required this.onPress});

  final Function onPress;
  final String cardText;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
      child: MaterialButton(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        color: color,
        splashColor: color,
        padding: const EdgeInsets.all(0.0),
        onPressed: () {
          onPress();
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Center(
              child: Text(
                cardText,
                style: TextStyle(
                    color: kWhite, fontSize: 18.0, fontWeight: FontWeight.w800),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
