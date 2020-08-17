//import 'package:farmers21/sevices/resource.dart';
//import 'package:farmers21/ui/main/main_screen.dart';
//import 'package:farmers21/ui/register/register_page.dart';
//import 'package:farmers21/widget/reusable_button.dart';
//import 'package:farmers21/widget/reusable_text_field.dart';
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//
//import '../../constants.dart';
//import 'logi_bloc.dart';
//
//class LoginPage extends StatefulWidget {
//  @override
//  _LoginPage createState() => _LoginPage();
//}
//
//class _LoginPage extends State<StatefulWidget> {
//  String initialText = '';
//  bool _isEditingText = true;
//  LoginBloc _bloc;
//
//  bool isShow = false;
//
//  String email = '';
//  String pass = '';
//
////  ProgressDialog progress;
//
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
//
//  @override
//  void initState() {
//    super.initState();
//    _bloc = LoginBloc();
//  }
//
//  @override
//  Widget build(BuildContext context) {
////    progress = getProgress(context);
//    return Scaffold(
//      backgroundColor: kBlue,
//      appBar: AppBar(
//        backgroundColor: Colors.transparent,
//        elevation: 0,
//        title: Text('الرجوع'),
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
//      extendBodyBehindAppBar: true,
//      body: SafeArea(
//        child: Stack(
//          children: <Widget>[
//            Column(
//              mainAxisAlignment: MainAxisAlignment.start,
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: <Widget>[
//                Container(
//                  margin: EdgeInsets.only(
//                    left: 15.0,
//                    right: 15.0,
//                    bottom: 10.0,
//                  ),
//                  child: Text(
//                    'سجل دخولك\nللاستمرار !!',
//                    style: TextStyle(fontSize: 25.0, color: kWhite),
//                    textAlign: TextAlign.start,
//                  ),
//                ),
//                Expanded(
//                  child: Container(
//                    padding: EdgeInsets.only(top: 20.0),
//                    decoration: BoxDecoration(
//                      color: kOffWhite,
//                      borderRadius: BorderRadius.only(
//                          topRight: Radius.circular(15.0),
//                          topLeft: Radius.circular(15.0)),
//                    ),
//                    child: SingleChildScrollView(
//                      child: Column(
//                        children: <Widget>[
//                          ReusableTextField(
//                            type: TextInputType.emailAddress,
//                            color: kWhite,
//                            borderColor: kGray,
//                            isPassword: false,
//                            hintText: 'البريد الالكتروني',
//                            onSubmitted: (newValue) {
//                              if (mounted)
//                                setState(() {
//                                  initialText = newValue;
//                                  _isEditingText = false;
//                                });
//                            },
//                            onChanged: (text) {
//                              email = text;
//                            },
//                          ),
//                          ReusableTextField(
//                            onChanged: (text) {
//                              pass = text;
//                            },
//                            color: kWhite,
//                            borderColor: kGray,
//                            isPassword: true,
//                            hintText: 'كلمة المرور',
//                            onSubmitted: (newValue) {
//                              if (mounted)
//                                setState(() {
//                                  initialText = newValue;
//                                  _isEditingText = false;
//                                });
//                            },
//                          ),
//                          Container(
//                            margin: EdgeInsets.only(top: 25),
//                            child: Text(
//                              'نسيت كلمة المرور ؟',
//                              style: TextStyle(fontSize: 17.0),
//                            ),
//                          ),
//                          Builder(
//                            builder: (context) => ReusableButton(
//                              cardText: 'تسجيل الدخول',
//                              color: Colors.blue,
//                              onPress: () {
//                                if (email.isEmpty || pass.isEmpty) {
//                                  print(email);
//                                  print(pass);
//                                  showToast('تأكد من بياناتك', false);
//                                  return;
//                                }
//                                _bloc.login(email: email, password: pass);
//                                _bloc.data.listen((event) {
//                                  switch (event.status) {
//                                    case Status.LOADING:
//                                      isShow = true;
//                                      if (mounted) setState(() {});
//                                      break;
//                                    case Status.COMPLETED:
//                                      isShow = false;
//                                      if (event.data['status']) {
//                                        print(event.data.toString());
//                                        saveData(event.data['data']);
//                                        replace(context, MainScreen());
//                                      } else {
//                                        var d = event.data['messages'];
//                                        var message = event.data['message'];
//                                        if (d == null) {
//                                          print(event.data.toString());
//                                          showToast(message, false);
//                                        } else {
//                                          var err_email = d['email'];
//                                          var err_pass = d['password'];
//
//                                          String s = '';
//                                          if (err_email != null) {
//                                            if (s.isNotEmpty) s += '\n';
//                                            s += err_email[0];
//                                          }
//                                          if (err_pass != null) {
//                                            if (s.isNotEmpty) s += '\n';
//                                            s += err_pass[0];
//                                          }
//                                          if (mounted) setState(() {});
//                                          print(event.data.toString());
//                                          showToast(s, false);
//                                        }
//                                      }
//                                      break;
//                                    case Status.ERROR:
//                                      isShow = false;
//                                      if (mounted) setState(() {});
//                                      showToast(event.message, false);
//                                      break;
//                                  }
//                                });
//                              },
//                            ),
//                          ),
//                          Container(
//                            margin: EdgeInsets.only(top: 25),
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.center,
//                              children: <Widget>[
//                                FlatButton(
//                                  onPressed: () {
//                                    replace(context, RegisterPage());
//                                  },
//                                  child: Text(
//                                    ' تسجيل حساب',
//                                    style: TextStyle(
//                                      fontSize: 20.0,
//                                      color: kTeal,
//                                      decoration: TextDecoration.underline,
//                                    ),
//                                  ),
//                                ),
//                                marginHorizontal(10),
//                                Text(
//                                  'ليس لديك حساب؟',
//                                  style: TextStyle(fontSize: 17.0),
//                                ),
//                              ].reversed.toList(),
//                            ),
//                          ),
//                          Container(
//                            margin: EdgeInsets.only(
//                              top: 25.0,
//                              bottom: 10.0,
//                            ),
//                            child: Text(
//                              'أو',
//                              style: TextStyle(fontSize: 17.0),
//                            ),
//                          ),
//                          Center(
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.center,
//                              children: <Widget>[
//                                Container(
//                                  margin: EdgeInsets.all(5.0),
//                                  height: 50.0,
//                                  width: 50.0,
//                                  decoration: BoxDecoration(
//                                      color: Colors.blue[700],
//                                      shape: BoxShape.circle),
//                                  child: Icon(
//                                    FontAwesomeIcons.facebookF,
//                                    color: kWhite,
//                                  ),
//                                ),
//                                Container(
//                                  margin: EdgeInsets.all(5.0),
//                                  height: 50.0,
//                                  width: 50.0,
//                                  decoration: BoxDecoration(
//                                      color: Colors.blue,
//                                      shape: BoxShape.circle),
//                                  child: Icon(
//                                    FontAwesomeIcons.twitter,
//                                    color: kWhite,
//                                  ),
//                                ),
//                                Container(
//                                  margin: EdgeInsets.all(5.0),
//                                  height: 50.0,
//                                  width: 50.0,
//                                  decoration: BoxDecoration(
//                                      color: Colors.red[700],
//                                      shape: BoxShape.circle),
//                                  child: Icon(
//                                    FontAwesomeIcons.google,
//                                    color: kWhite,
//                                  ),
//                                ),
//                              ],
//                            ),
//                          )
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
//}
