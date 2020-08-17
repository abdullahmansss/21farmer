//import 'package:farmers21/ui/login/login_page.dart';
//import 'package:farmers21/ui/register/register_page.dart';
//import 'package:farmers21/widget/reusable_card_welcome.dart';
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
//import '../../constants.dart';
//
//class WelcomePage extends StatefulWidget {
//  @override
//  _WelcomePage createState() => _WelcomePage();
//}
//
//class _WelcomePage extends State<StatefulWidget> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      extendBodyBehindAppBar: true,
//      body: SafeArea(
//        child: Column(
//          children: <Widget>[
//            Padding(
//              padding: EdgeInsets.only(
//                left: 50.0,
//                right: 50.0,
//                top: 50.0,
//                bottom: 20.0,
//              ),
////              child: Image(
////                image: AssetImage('assets/logo2_horizontal.png'),
////              ),
//            ),
//            ReusableCardWelcome(
//              cardText: 'تسجيل الدخول عبر جوجل',
//              icon: FontAwesomeIcons.google,
//              color: Colors.red[700],
//              textColor: kWhite,
//              onPress: () {},
//            ),
//            ReusableCardWelcome(
//              cardText: 'تسجيل الدخول عبر الفيسبوك',
//              icon: FontAwesomeIcons.facebookF,
//              color: Colors.indigo[600],
//              textColor: kWhite,
//              onPress: () {},
//            ),
//            ReusableCardWelcome(
//              cardText: 'تسجيل حساب جديد بالبريد',
//              color: Colors.blue,
//              textColor: kWhite,
//              icon: Icons.email,
//              onPress: () {
//                push(context, RegisterPage());
//              },
//            ),
//            marginVertical(40),
//            ReusableCardWelcome(
//              cardText: 'تسجيل الدخول',
//              color: Colors.white,
//              textColor: kBlue,
//              onPress: () {
//                push(context, LoginPage());
//              },
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
