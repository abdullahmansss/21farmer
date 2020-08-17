import 'package:farmers21/widgets/text_form_field_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class PassDialog extends StatefulWidget {
  @override
  _PassDialogState createState() => _PassDialogState();
}

class _PassDialogState extends State<PassDialog> {
  String pass = '';
  String rePass = '';
  String newPass = '';
  final TextEditingController currentPassController = TextEditingController();
  final TextEditingController newPassController = TextEditingController();
  final TextEditingController confirmPassController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  Widget dialogContent(BuildContext context) {
    return Container(
      child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  side: BorderSide(color: kTeal, width: 2.0)),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20,bottom: 20,right: 0,left: 0),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: MyTextFormFieldProfile(
                    controller: currentPassController,
                    isEnable: true,
                    hint: 'Old password',
                    inputType: TextInputType.text,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10,bottom: 0,right: 0,left: 0),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: MyTextFormFieldProfile(
                    controller: newPassController,
                    isEnable: true,
                    hint: 'New password',
                    inputType: TextInputType.text,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10,bottom: 20,right: 0,left: 0),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: MyTextFormFieldProfile(
                    controller: confirmPassController,
                    isEnable: true,
                    hint: 'Confirm password',
                    inputType: TextInputType.text,
                  ),
                ),
              ),

              FlatButton(
                color: kTeal,
                padding: EdgeInsets.all(10),
                onPressed: () async {
                  Navigator.pop(context, {
                    'oldPass': currentPassController.text,
                    'rePass': confirmPassController.text,
                    'newPass': newPassController.text,
                  });
                },
                child: Center(
                  child: Text(
                    'تأكيد',
                    style: TextStyle(
                      color: kWhite,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      children: <Widget>[
        Stack(
          children: <Widget>[
            dialogContent(context),
          ],
        ),
      ],
    );
  }
}
