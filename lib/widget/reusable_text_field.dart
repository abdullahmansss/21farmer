import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ReusableTextField extends StatelessWidget {
  ReusableTextField(
      {@required this.color,
      @required this.onSubmitted,
      @required this.borderColor,
      @required this.hintText,
      this.type,
      @required this.isPassword,
      @required this.onChanged});

  final String hintText;
  final Color color;
  final bool isPassword;
  final Color borderColor;
  final TextInputType type;
  final ValueChanged<String> onSubmitted;
  final Function(String text) onChanged;
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
          ),
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: TextField(
            keyboardType: type,
            style: TextStyle(fontSize: 20.0),
            onSubmitted: onSubmitted,
            onChanged: onChanged,

            decoration: InputDecoration.collapsed(hintText: hintText,
            ),
            maxLines: 1,
            obscureText: isPassword,
          ),
        ),
      ),
    );
  }
}