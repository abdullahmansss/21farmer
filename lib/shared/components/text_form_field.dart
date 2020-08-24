import 'package:flutter/material.dart';

class MyTextFormField extends TextFormField {
  MyTextFormField({
    TextEditingController controller,
    String hint,
    TextInputType inputType,
    bool hideText,
    Widget toggle,
  }) : super(
          controller: controller,
          keyboardType: inputType,
          style: TextStyle(fontSize: 22),
          obscureText: hideText ?? false,
          decoration: InputDecoration(
            suffixIcon: toggle,
            hintText: hint,
            hintStyle: TextStyle(color: Colors.black38),
            contentPadding: EdgeInsets.symmetric(horizontal: 16),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.teal,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.teal),
            ),
          ),
        );
}
