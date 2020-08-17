//import 'package:farmers21/ui/home/bloc/events.dart';
//import 'package:farmers21/ui/home/bloc/states.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//
//class HomeBloc extends Bloc<HomeEvents, HomeStates> {
//  @override
//  HomeStates get initialState => FarmsPageState();
//
//  @override
//  Stream<HomeStates> mapEventToState(HomeEvents event) async* {
//    if (event is NavigateEvent) {
//      switch (event.index) {
//        case 0:
//          yield FarmsPageState();
//          break;
//        case 1:
//          yield DevicesPageState(-1);
//          break;
//        case 2:
//          yield AddDevicePageState();
//          break;
//        case 3:
//          yield MorePageState();
//          break;
//      }
//    }
//    if (event is NavigateToDevicesEvent) {
//      yield DevicesPageState(event.id);
//    }
//  }
//}
