import 'package:flutter/material.dart';

class MyTextFormFieldProfile extends TextFormField {
  MyTextFormFieldProfile({
    bool isEnable,
    TextEditingController controller,
//    bool enabled,
    String hint,
    TextInputType inputType,
    bool hideText,
    Widget toggle,
  }) : super(
          controller: controller,
          enabled: isEnable,
          keyboardType: inputType,
          style: TextStyle(fontSize: 18),
          obscureText: hideText ?? false,
          decoration: InputDecoration(
            suffixIcon: toggle,
            hintText: hint,
            hintStyle: TextStyle(color: Colors.black38),
            contentPadding: EdgeInsets.symmetric(horizontal: 16),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.teal.withOpacity(0.5),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.teal),
            ),
          ),
        );
}
