import 'package:farmers21/modules/splash/splash_screen.dart';
import 'package:farmers21/shared/di/di.dart';
import 'package:farmers21/shared/global/cubit.dart';
import 'package:farmers21/shared/global/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '21 Farmers',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: "Cairo",
      ),
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (BuildContext context) => di<GlobalCubit>()..getUser(),
        child: BlocConsumer<GlobalCubit, GlobalStates>(
          listener: (BuildContext context, GlobalStates state) {},
          builder: (BuildContext context, GlobalStates state) => SplashScreen(),
        ),
      ),
    );
  }
}
