import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ReusableTextFieldDialog extends StatelessWidget {
    ReusableTextFieldDialog(
      {@required this.color,
      @required this.onSubmitted,
      @required this.borderColor,
      @required this.hintText,
      this.type,
      @required this.isPassword});

  final String hintText;
  final Color color;
  final bool isPassword;
  final Color borderColor;
  final TextInputType type;
  final ValueChanged<String> onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
        ),
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 0),
        child: TextField(
          keyboardType: type,
          style: TextStyle(fontSize: 20.0),
          onSubmitted: onSubmitted,
          decoration: InputDecoration.collapsed(hintText: hintText),
          maxLines: 1,
          obscureText: isPassword,
        ),
      ),
    );
  }
}
