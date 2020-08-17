//import 'dart:core';
//
//import 'package:farmers21/sevices/resource.dart';
//import 'package:farmers21/ui/main/main_screen.dart';
//import 'package:farmers21/ui/register/register_bloc.dart';
//import 'package:farmers21/widget/reusable_text_field.dart';
//import 'package:farmers21/widget/reusable_text_password_field.dart';
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//
//import '../../constants.dart';
//import 'cities_model.dart' as Cities;
//import 'coutries_model.dart' as Countries;
//
//class RegisterPage extends StatefulWidget {
//  @override
//  _RegisterPage createState() => _RegisterPage();
//}
//
//class _RegisterPage extends State<StatefulWidget> {
//  String initialText = '';
//
//  String name = '';
//  String email = '';
//  String password = '';
//  String confirm_password = '';
//  String mobile = '';
//  String country_code = '+20';
//
//  bool isShow = false;
//
//  RegisterBloc _bloc;
//
//  List<Countries.Data> countries = List();
//  List<Cities.Data> cities = List();
//  bool _showPassword = false;
//  bool _showPasswordConfirmation = false;
//  bool _showRegisterButton = false;
//
///*
//  saveData(var d) async {
//    SharedPreferences prefs = await SharedPreferences.getInstance();
//    prefs.setString("id", d['id']);
//    prefs.setString("name", d['name']);
//    prefs.setString("email", d['email']);
//    prefs.setString("token", d['api_token']);
//
//    testToken = d['api_token'];
//    testID = d['id'];
//  }
//*/
//
//  @override
//  void initState() {
//    super.initState();
//    _bloc = RegisterBloc();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      extendBodyBehindAppBar: true,
//      appBar: AppBar(
//        elevation: 0,
//        centerTitle: true,
//        title: Text(
//          'Create Account',
//          style: TextStyle(
//            color: kWhite,
//          ),
//        ),
//        leading: FlatButton(
//          onPressed: () {
//            pop(context);
//          },
//          child: Icon(
//            Icons.arrow_back,
//            color: kWhite,
//          ),
//        ),
//      ),
//      body: SafeArea(
//        child: Stack(
//          children: <Widget>[
//            Column(
//              mainAxisAlignment: MainAxisAlignment.start,
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: <Widget>[
//                Expanded(
//                  child: Container(
//                    padding: EdgeInsets.only(top: 20.0),
//                    child: SingleChildScrollView(
//                      child: Column(
//                        children: <Widget>[
//                          ReusableTextField(
//                            onChanged: (text) {
//                              name = text;
//                              checkInputs();
//                            },
//                            type: TextInputType.text,
//                            color: kWhite,
//                            borderColor: kGreen,
//                            isPassword: false,
//                            hintText: 'Full name',
//                            onSubmitted: (newValue) {
//                              if (mounted)
//                                setState(() {
//                                  initialText = newValue;
//                                });
//                            },
//                          ),
//                          ReusableTextField(
//                            onChanged: (text) {
//                              email = text;
//                              checkInputs();
//                            },
//                            type: TextInputType.emailAddress,
//                            color: kWhite,
//                            borderColor: kGreen,
//                            isPassword: false,
//                            hintText: 'Email',
//                            onSubmitted: (newValue) {
//                              if (mounted)
//                                setState(() {
//                                  initialText = newValue;
//                                });
//                            },
//                          ),
//                          ReusableTextField(
//                            onChanged: (text) {
//                              mobile = text;
//                              checkInputs();
//                            },
//                            color: kWhite,
//                            borderColor: kGreen,
//                            isPassword: false,
//                            hintText: 'Phone',
//                            onSubmitted: (newValue) {
//                              if (mounted)
//                                setState(() {
//                                  initialText = newValue;
//                                });
//                            },
//                          ),
//                          ReusableTextFieldPassword(
//                            onChanged: (text) {
//                              password = text;
//                              checkInputs();
//                            },
//                            onPressed: () {
//                              setState(() {
//                                this._showPasswordConfirmation =
//                                    !this._showPasswordConfirmation;
//                              });
//                              ;
//                            },
//                            type: TextInputType.visiblePassword,
//                            color: kWhite,
//                            borderColor: kGreen,
//                            isPassword: _showPasswordConfirmation,
//                            hintText: 'Password',
//                            onSubmitted: (newValue) {
//                              if (mounted)
//                                setState(() {
//                                  initialText = newValue;
//                                });
//                            },
//                          ),
//                          ReusableTextFieldPassword(
//                            onChanged: (text) {
//                              confirm_password = text;
//                              checkInputs();
//                            },
//                            onPressed: () {
//                              setState(() {
//                                this._showPasswordConfirmation =
//                                    !this._showPasswordConfirmation;
//                              });
//                              ;
//                            },
//                            type: TextInputType.visiblePassword,
//                            color: kWhite,
//                            borderColor: kGreen,
//                            isPassword: _showPasswordConfirmation,
//                            hintText: 'Confirm Password',
//                            onSubmitted: (newValue) {
//                              if (mounted)
//                                setState(() {
//                                  initialText = newValue;
//                                });
//                            },
//                          ),
//                          marginVertical(20),
//                          Visibility(
//                              visible: _showRegisterButton,
//                              child: FloatingActionButton(
//                                child: Icon(Icons.arrow_forward_ios),
//                                onPressed: () {
//                                  if (name.isEmpty ||
//                                      email.isEmpty ||
//                                      password.isEmpty ||
//                                      confirm_password != password ||
//                                      mobile.isEmpty) {
//                                    print(name);
//                                    print(email);
//                                    print(password);
//                                    print(confirm_password);
//                                    print(mobile);
//                                    showToast('تأكد من بياناتك', false);
//                                    return;
//                                  }
//
//                                  _bloc.register(
//                                    name: name,
//                                    email: email,
//                                    password: password,
//                                    password_confirmation: confirm_password,
//                                    mobile: mobile,
////                                    country_code: country_code,
//                                  );
//                                  _bloc.data.listen((event) {
//                                    switch (event.status) {
//                                      case Status.LOADING:
//                                        isShow = true;
//                                        if (mounted) setState(() {});
//                                        break;
//
//                                      case Status.COMPLETED:
//                                        isShow = false;
////                                        showToast(event.data['message'], true);
//                                        print(event.data.toString());
//                                        replace(context, MainScreen());
//                                        // saveData(event.data['data']);
//                                        break;
//
//                                      case Status.ERROR:
//                                        isShow = false;
//                                        if (mounted) setState(() {});
//                                        showToast('حدث خطأ ما', false);
//                                        break;
//                                    }
//                                  });
//                                },
//                              ))
//                        ],
//                      ),
//                    ),
//                  ),
//                )
//              ],
//            ),
//            initProgress(isShowing: isShow),
//          ],
//        ),
//      ),
//    );
//  }
//
//  void checkInputs() {
//    print("email$email");
//    print("name$name");
//    print("mobile$mobile");
//    print("password$password");
//    print("confirm_password$confirm_password");
//    if (email.isNotEmpty &&
//        name.isNotEmpty &&
//        mobile.isNotEmpty &&
//        password.isNotEmpty &&
//        confirm_password.isNotEmpty) {
//      setState(() {
//        _showRegisterButton = true;
//      });
//    } else {
//      setState(() {
//        _showRegisterButton = false;
//      });
//    }
//  }
//}
