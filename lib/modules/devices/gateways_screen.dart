//import 'package:barcode_scan/barcode_scan.dart';
//import 'file:///D:/Softagi/Projects/Rootair/farmer/lib/shared/components/constants.dart';
//import 'package:farmers21/ui/devices/bloc/devices_model.dart';
//import 'package:farmers21/ui/devices/bloc/gateways_events.dart';
//import 'package:farmers21/ui/devices/device_details/bloc/device_bloc.dart';
//import 'package:farmers21/ui/devices/device_details/bloc/device_events.dart';
//import 'package:farmers21/ui/devices/device_details/device_details_screen.dart';
//import 'package:farmers21/ui/home/home_screen.dart';
//import 'package:farmers21/ui/profile/profile_screen.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:flutter_icons/flutter_icons.dart';
//import 'package:modal_progress_hud/modal_progress_hud.dart';
//
//import 'bloc/gateways_bloc.dart';
//import 'bloc/gateways_states.dart';
//
//class GatewaysScreen extends StatefulWidget {
//  final String fieldId;
//
//  GatewaysScreen(this.fieldId);
//
//  @override
//  _GatewaysScreenState createState() => _GatewaysScreenState();
//}
//
//class _GatewaysScreenState extends State<GatewaysScreen> with SingleTickerProviderStateMixin {
//  ScanResult scanResult;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Color(0xFFEEEEEE),
//      appBar: buildAppBar(context),
//      body: BlocBuilder<GatewaysBloc, GatewaysStates>(
//        builder: (context, state) {
//          if (state is InitialGatewaysState) {
//            BlocProvider.of<GatewaysBloc>(context).add(FetchGatewaysEvent(testToken, widget.fieldId));
//          }
//          if (state is ErrorGatewaysState) {
//            showToast(state.error, false);
//
//            print(state.error);
//          }
//          if (state is! RefreshingGatewaysState) {
//          }
//          final devices = BlocProvider.of<GatewaysBloc>(context).devices;
//          return ModalProgressHUD(
//            inAsyncCall: state is LoadingGatewaysState,
//            child: ListView.builder(
//              itemCount: devices.length,
//              itemBuilder: (context, index) => buildListItem(index, devices[index]),
//            ),
//          );
//        },
//      ),
//    );
//  }
//
//  Widget buildListItem(int index, DevicesBody device) {
//    return Card(
//      clipBehavior: Clip.antiAliasWithSaveLayer,
//      shape: RoundedRectangleBorder(
//        borderRadius: BorderRadius.circular(10),
//        side: BorderSide.none,
//      ),
//      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//      color: Colors.white,
//      child: ListTile(
//        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//        onTap: () {
//          BlocProvider.of<DeviceBloc>(context).add(SelectDeviceEvent(device));
//          Navigator.push(context, MaterialPageRoute(builder: (context) => DeviceDetailsScreen()));
//        },
//        title: Text(
//          device.deviceId,
//          style: TextStyle(
//            color: Colors.black,
//            fontSize: 14,
//          ),
//        ),
//        subtitle: Text(
//          device.name,
//          style: TextStyle(
//            color: Colors.black,
//            fontSize: 22,
//          ),
//        ),
//        trailing: buildPopupMenuButton(),
//      ),
//    );
//  }
//
//  PopupMenuButton<MenuId> buildPopupMenuButton() {
//    return PopupMenuButton<MenuId>(
//      onSelected: (item) {
//        switch (item) {
////          case MenuId.EDIT:
////            //todo
////            break;
//          case MenuId.DELETE:
//            //todo
////            BlocProvider.of<FarmBloc>(context)
////                .add(DeleteFieldEvent(testToken, fieldId));
//            break;
//        }
//      },
//      icon: Icon(
//        Icons.more_vert,
//        size: 24,
//        color: Colors.black,
//      ),
//      itemBuilder: (context) => menuOptions
//          .map(
//            (e) => PopupMenuItem<MenuId>(
//              value: e.id,
//              child: ListTile(
//                leading: e.icon,
//                title: e.name,
//              ),
//            ),
//          )
//          .toList(),
//    );
//  }
//
//  Widget buildAppBar(BuildContext context) {
//    return AppBar(
//      actions: <Widget>[
//        IconButton(
//          onPressed: () {
//            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
//          },
//          icon: Icon(
//            Icons.person,
//            color: kWhite,
//          ),
//        ),
//        IconButton(
//          onPressed: () {
//            scan();
//          },
//          icon: Icon(
//            Icons.camera,
//            color: kWhite,
//          ),
//        ),
//      ],
//      elevation: 5,
//      leading: IconButton(
//        icon: Icon(
//          FlutterIcons.angle_left_faw,
//          color: kWhite,
//          size: 22,
//        ),
//        onPressed: () {
//          Navigator.pop(context);
//        },
//      ),
//      title: Text(
//        'Devices',
//        style: TextStyle(
//          fontSize: 18,
//          color: kWhite,
//        ),
//      ),
//    );
//  }
//
//  Future scan() async {
//    try {
//      var options = ScanOptions(
//        strings: {
//          "cancel": 'Cancel',
//          "flash_on": 'Flash On',
//          "flash_off": 'Flash Off',
//        },
//        restrictFormat: [...BarcodeFormat.values.toList()..removeWhere((e) => e == BarcodeFormat.unknown)],
//        useCamera: -1,
//        autoEnableFlash: false,
//        android: AndroidOptions(
//          aspectTolerance: 0.00,
//          useAutoFocus: true,
//        ),
//      );
//
//      var result = await BarcodeScanner.scan(options: options);
//
//      setState(() {
//        scanResult = result;
//        showToast(scanResult.rawContent, true);
//      });
//    } on PlatformException catch (e) {
//      var result = ScanResult(
//        type: ResultType.Error,
//        format: BarcodeFormat.unknown,
//      );
//
//      if (e.code == BarcodeScanner.cameraAccessDenied) {
//        setState(() {
//          result.rawContent = 'The user did not grant the camera permission!';
//        });
//      } else {
//        result.rawContent = 'Unknown error: $e';
//      }
//      setState(() {
//        scanResult = result;
//        showToast(scanResult.rawContent, false);
//      });
//    }
//  }
//}
////        SimpleTooltip(
//////          tooltipTap: () {
//////            scan();
//////          },
//////          animationDuration: Duration(milliseconds: 500),
//////          show: showToolTip,
//////          tooltipDirection: TooltipDirection.left,
//////          borderColor: Colors.yellow,
//////          ballonPadding: EdgeInsets.all(0),
//////          child: IconButton(
//////            onPressed: () {
//////              if (selectedGateway == -1) {
//////                setState(() {
//////                  showToolTip = !showToolTip;
//////                });
//////              } else {
//////                scan();
//////              }
//////            },
//////            icon: Icon(
//////              Icons.camera,
//////              color: kWhite,
//////            ),
//////          ),
//////          maxHeight: 100,
//////          maxWidth: 200,
//////          minHeight: 50,
//////          minWidth: 100,
//////          content: Text(
//////            "Long click a gateway to append a device or click here to add new",
//////            style: TextStyle(
//////              color: Colors.black,
//////              fontSize: 12,
//////              decoration: TextDecoration.none,
//////            ),
//////          ),
//////        ),
