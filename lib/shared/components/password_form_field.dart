import 'file:///D:/Softagi/Projects/Rootair/farmer/lib/shared/components/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PasswordFormField extends StatefulWidget
{
  final String hint;
  final TextEditingController controller;

  PasswordFormField({this.hint, this.controller});

  @override
  _PasswordFormFieldState createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField>
{
  bool toggle = false;
  // if true toggle is on and password is visible

  @override
  Widget build(BuildContext context) {
    return MyTextFormField(
      controller: widget.controller,
      hint: widget.hint,
      inputType: TextInputType.visiblePassword,
      hideText: !toggle,
      toggle: IconButton(
        icon: Icon(
          toggle ? FontAwesomeIcons.dotCircle : FontAwesomeIcons.circle,
          color: Colors.teal,
        ),
        onPressed: () {
          toggle = !toggle;
          if (mounted) {
            setState(() {});
          }
        },
      ),
    );
  }
}