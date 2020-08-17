import 'package:flutter/material.dart';

class ReusableNoLimTextField extends StatelessWidget {
  ReusableNoLimTextField(
      {@required this.color,
      @required this.onChanged,
      @required this.borderColor,
      @required this.hintText,
      @required this.isPassword,
      @required this.initial});

  final String hintText;
  final String initial;
  final Color color;
  final bool isPassword;
  final Color borderColor;
  final ValueChanged<String> onChanged;

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
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 5.0,
        ),
        child: TextFormField(
          initialValue: initial ?? '',
          style: TextStyle(fontSize: 16.0),
          onChanged: onChanged,
          decoration: InputDecoration.collapsed(
            hintText: hintText,
          ),
          obscureText: isPassword,
          maxLines: 5,
          minLines: 5,
        ),
      ),
    );
  }
}
