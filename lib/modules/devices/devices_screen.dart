import 'package:barcode_scan/barcode_scan.dart';
import 'package:farmers21/models/devices/devices_model.dart';
import 'package:farmers21/modules/device/device_screen.dart';
import 'package:farmers21/modules/devices/cubit/cubit.dart';
import 'package:farmers21/modules/devices/cubit/states.dart';
import 'package:farmers21/modules/home/home_screen.dart';
import 'package:farmers21/shared/di/di.dart';
import 'file:///D:/Softagi/Projects/Rootair/farmer/lib/shared/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class DevicesScreen extends StatefulWidget
{
  final String id,token,title;

  const DevicesScreen({this.id, this.token, this.title});

  @override
  _DevicesScreenState createState() => _DevicesScreenState();
}

class _DevicesScreenState extends State<DevicesScreen> with SingleTickerProviderStateMixin {
  ScanResult scanResult;

  @override
  Widget build(BuildContext context)
  {
    return BlocProvider(
      create: (BuildContext context) => di<DevicesCubit>()
        ..getDevices(
          token: widget.token,
          url: 'iot-device/field/',
          id: widget.id,
        ),
      child: BlocConsumer<DevicesCubit, DevicesStates>(
        listener: (BuildContext context, DevicesStates state) {
          if (state is ErrorDevicesState) {
            showToast(state.error, false);
            print('------------------ Error : ${state.error}');
          }
        },
        builder: (BuildContext context, DevicesStates state) {
          return Scaffold(
            backgroundColor: Color(0xFFEEEEEE),
            appBar: buildAppBar(context, widget.title),
            body: ModalProgressHUD(
              inAsyncCall: state is LoadingDevicesState,
              child: Visibility(
                visible: state is! LoadingDevicesState,
                child: ListView.builder(
                  itemCount: DevicesCubit.get(context).devicesModel.body.length,
                  itemBuilder: (context, index) => buildListItem(index, DevicesCubit.get(context).devicesModel.body[index]),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildListItem(int index, DevicesDetailsModel device) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide.none,
      ),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      color: Colors.white,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        onTap: () {
          navigateTo(context, DeviceDetailsScreen(
            title: device.name,
            token: widget.token,
            id: device.id,
          ));
        },
        title: Text(
          device.device_id,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
        subtitle: Text(
          device.name,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
        ),
        trailing: buildPopupMenuButton(),
      ),
    );
  }

  PopupMenuButton<MenuId> buildPopupMenuButton() {
    return PopupMenuButton<MenuId>(
      onSelected: (item) {
        switch (item) {
//          case MenuId.EDIT:
//            //todo
//            break;
          case MenuId.DELETE:
            //todo
//            BlocProvider.of<FarmBloc>(context)
//                .add(DeleteFieldEvent(testToken, fieldId));
            break;
        }
      },
      icon: Icon(
        Icons.more_vert,
        size: 24,
        color: Colors.black,
      ),
      itemBuilder: (context) => menuOptions
          .map(
            (e) => PopupMenuItem<MenuId>(
              value: e.id,
              child: ListTile(
                leading: e.icon,
                title: e.name,
              ),
            ),
          )
          .toList(),
    );
  }

  Widget buildAppBar(BuildContext context, String title) {
    return AppBar(
      actions: <Widget>[
        /*IconButton(
          onPressed: () {
            //Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
          },
          icon: Icon(
            Icons.person,
            color: kWhite,
          ),
        ),*/
        IconButton(
          onPressed: () {
            scan();
          },
          icon: Icon(
            Icons.camera,
            color: kWhite,
          ),
        ),
      ],
      elevation: 5,
      leading: IconButton(
        icon: Icon(
          FlutterIcons.angle_left_faw,
          color: kWhite,
          size: 22,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          color: kWhite,
        ),
      ),
    );
  }

  Future scan() async {
    try {
      var options = ScanOptions(
        strings: {
          "cancel": 'Cancel',
          "flash_on": 'Flash On',
          "flash_off": 'Flash Off',
        },
        restrictFormat: [...BarcodeFormat.values.toList()..removeWhere((e) => e == BarcodeFormat.unknown)],
        useCamera: -1,
        autoEnableFlash: false,
        android: AndroidOptions(
          aspectTolerance: 0.00,
          useAutoFocus: true,
        ),
      );

      var result = await BarcodeScanner.scan(options: options);

      setState(() {
        scanResult = result;
        showToast(scanResult.rawContent, true);
      });
    } on PlatformException catch (e) {
      var result = ScanResult(
        type: ResultType.Error,
        format: BarcodeFormat.unknown,
      );

      if (e.code == BarcodeScanner.cameraAccessDenied) {
        setState(() {
          result.rawContent = 'The user did not grant the camera permission!';
        });
      } else {
        result.rawContent = 'Unknown error: $e';
      }
      setState(() {
        scanResult = result;
        showToast(scanResult.rawContent, false);
      });
    }
  }
}