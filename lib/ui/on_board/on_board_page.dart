import 'package:farmers21/constants.dart';
import 'package:farmers21/ui/sign_in/sign_in_screen.dart';
import 'package:farmers21/ui/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

class OnBoardScreen extends StatelessWidget {
  static const String id = 'onBoard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/splash_back.jpg'),
            colorFilter: ColorFilter.mode(Colors.black26, BlendMode.multiply),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Spacer(
              flex: 1,
            ),
            CircleAvatar(
              radius: 60,
              backgroundColor: kNewTeal,
              child: Text(
                '21',
                style: TextStyle(
                  fontSize: 30,
                  color: kWhite,
                ),
              ),
            ),
            Text(
              '21 Farmer',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 42,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2),
            ),
            Text(
              'Agriculture as it should be',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 2),
            ),
            Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                color: kNewTeal,
                onPressed: () async {
                  Navigator.pushNamed(context, SignUpScreen.id);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: kWhite,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                bottom: 16.0,
              ),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                color: kWhite,
                onPressed: () async {
                  Navigator.pushNamed(context, SignInScreen.id);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: kNewTeal,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
