import 'package:farmers21/splash/splash_screen.dart';
import 'package:farmers21/ui/add_farm/add_farm_screen.dart';
import 'package:farmers21/ui/add_farm/bloc/add_farm_bloc.dart';
import 'package:farmers21/ui/add_field/bloc/add_field_bloc.dart';
import 'package:farmers21/ui/devices/bloc/gateways_bloc.dart';
import 'package:farmers21/ui/devices/device_details/bloc/device_bloc.dart';
import 'package:farmers21/ui/farms/bloc/farms_bloc.dart';
import 'package:farmers21/ui/farms/farm_details/bloc/farm_bloc.dart';
import 'package:farmers21/ui/farms/farm_details/farm_details_screen.dart';
import 'package:farmers21/ui/field/bloc/field_bloc.dart';
import 'package:farmers21/ui/field/field_screen.dart';
import 'package:farmers21/ui/home/home_screen.dart';
import 'package:farmers21/ui/on_board/on_board_page.dart';
import 'package:farmers21/ui/sign_in/bloc/login_bloc.dart';
import 'package:farmers21/ui/sign_in/sign_in_screen.dart';
import 'package:farmers21/ui/sign_up/bloc/register_bloc.dart';
import 'package:farmers21/ui/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FarmsBloc>(create: (BuildContext context) => FarmsBloc()),
        BlocProvider<FarmBloc>(create: (BuildContext context) => FarmBloc()),
        BlocProvider<FieldBloc>(create: (BuildContext context) => FieldBloc()),
        BlocProvider<GatewaysBloc>(create: (BuildContext context) => GatewaysBloc()),
        BlocProvider<DeviceBloc>(create: (BuildContext context) => DeviceBloc()),
        BlocProvider<AddFieldBloc>(create: (BuildContext context) => AddFieldBloc()),
        BlocProvider<AddFarmBloc>(create: (BuildContext context) => AddFarmBloc()),
        BlocProvider<LoginBloc>(create: (BuildContext context) => LoginBloc()),
        BlocProvider<RegisterBloc>(create: (BuildContext context) => RegisterBloc()),
      ],
      child: MaterialApp(
        title: '21 Farmers',
        theme: ThemeData(
          primarySwatch: Colors.teal,
          fontFamily: "Cairo",
        ),
        debugShowCheckedModeBanner: false,
//        initialRoute: 'map',
        initialRoute: SplashScreen.id,
        routes: {
//          SplashPage.id: (context) => SplashPage(),
//          ProfileScreen.id: (context) => ProfileScreen(),
//          'map': (context) => MapWidget(),
          SplashScreen.id: (context) => SplashScreen(),
          OnBoardScreen.id: (context) => OnBoardScreen(),
          SignInScreen.id: (context) => SignInScreen(),
          SignUpScreen.id: (context) => SignUpScreen(),
          HomeScreen.id: (context) => HomeScreen(),
          FarmDetailsScreen.id: (context) => FarmDetailsScreen(),
          FieldScreen.id: (context) => FieldScreen(),
          AddFarmScreen.id: (context) => AddFarmScreen(),
//          GatewaysScreen.id: (context) => GatewaysScreen(),
        },
      ),
    );
  }
}