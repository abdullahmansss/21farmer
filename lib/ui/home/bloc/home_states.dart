//import 'package:equatable/equatable.dart';
//
//abstract class HomeStates extends Equatable {
//  final String appBarTitle;
//  final String appBarSubtitle;
//  final int pageIndex;
//  final bool canSearch;
//
//  HomeStates(
//      this.appBarTitle, this.appBarSubtitle, this.pageIndex, this.canSearch);
//
//  @override
//  List<Object> get props => [];
//}
//
//class FarmsPageState extends HomeStates {
//  FarmsPageState() : super('Properties', 'Farms', 0, true);
//}
//
//class DevicesPageState extends HomeStates {
//  final int id;
//
//  DevicesPageState(this.id) : super('Devices', 'Gateways', 1, true);
//
//  @override
//  List<Object> get props {
//    List<Object> p = super.props;
//    p.add(id);
//    print('hello : ${p.toString()}');
//    return p;
//  }
//}
//
//class AddDevicePageState extends HomeStates {
//  AddDevicePageState() : super('Add Device', 'Scan Device Code', 2, false);
//}
//
//class MorePageState extends HomeStates {
//  MorePageState() : super('Profile', 'My Profile', 3, false);
//}
