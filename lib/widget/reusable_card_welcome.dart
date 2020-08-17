import 'package:flutter/material.dart';

import '../constants.dart';

class ReusableCardWelcome extends StatelessWidget {
  ReusableCardWelcome(
      {@required this.cardText,
      this.icon,
      this.textColor,
      @required this.color,
      @required this.onPress});

  final Function onPress;
  final String cardText;
  final IconData icon;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
      child: MaterialButton(
        elevation: 10.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        color: color,
        splashColor: color,
        padding: const EdgeInsets.all(0.0),
        onPressed: ()
        {
          onPress();
        } ,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Center(
                child: Icon(
                  icon,
                  color: kWhite,
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    cardText,
                    style: TextStyle(
                        color: textColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
