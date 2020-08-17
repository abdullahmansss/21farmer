//import 'package:farmers21/sevices/navigator/navigator_events.dart';
//import 'package:farmers21/ui/sign_in/sign_in_screen.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//
//class NavigatorBloc extends Bloc<NavigatorEvents, String> {
//  final GlobalKey<NavigatorState> navigatorKey;
//
//  NavigatorBloc(this.navigatorKey);
//
//  @override
//  get initialState => SignInScreen.id;
//
//  @override
//  Stream<String> mapEventToState(NavigatorEvents event) async* {
//    if (event is Pop) {
//      navigatorKey.currentState.pop();
//      print('popped');
//    }
//    if (event is Push) {
//      navigatorKey.currentState.pushNamed(event.destination);
//      print('pushed');
//    }
//    if (event is Replace) {
//      navigatorKey.currentState.pushReplacementNamed(event.destination);
//      print('replaced');
//    }
//  }
//}
