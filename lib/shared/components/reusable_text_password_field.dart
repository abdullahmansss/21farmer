import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ReusableTextFieldPassword extends StatelessWidget {
  ReusableTextFieldPassword(
      {@required this.color,
      @required this.onSubmitted,
      @required this.borderColor,
      @required this.hintText,
      @required this.onPressed,
      this.type,
      @required this.isPassword,
      @required this.onChanged});

  final String hintText;
  final Color color;
  bool isPassword= false;
  final Color borderColor;
  final TextInputType type;
  final ValueChanged<String> onSubmitted;
  final Function(String text) onChanged;
  final Function() onPressed;
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
            decoration: InputDecoration(
              labelText: hintText,
              prefixIcon: Icon(Icons.security),
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.remove_red_eye,
                  color: this.isPassword ? Colors.blue : Colors.grey,
                ),
                onPressed:() async
                {
                  onPressed();
                },
              ),
            ),
            maxLines: 1,
            obscureText: !this.isPassword,
          ),
        ),
      ),
    );
  }
}