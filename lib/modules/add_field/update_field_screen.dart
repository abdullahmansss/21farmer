//import 'file:///D:/Softagi/Projects/Rootair/farmer/lib/shared/components/constants.dart';
//import 'package:farmers21/ui/add_farm/update_farm_screen.dart';
//import 'package:farmers21/ui/farms/bloc/farms_model.dart';
//import 'package:farmers21/ui/farms/farm_details/bloc/farm_bloc.dart';
//import 'package:farmers21/ui/farms/farm_details/bloc/farm_events.dart';
//import 'package:farmers21/ui/home/home_screen.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:flutter_icons/flutter_icons.dart';
//import 'package:modal_progress_hud/modal_progress_hud.dart';
//
//import 'bloc/add_field_bloc.dart';
//import 'bloc/add_field_event.dart';
//import 'bloc/add_field_state.dart';
//
//class UpdateFieldScreen extends StatefulWidget {
//  final FieldBody field;
//  final FarmBody farm;
//
//  UpdateFieldScreen(this.field, this.farm);
//
//  @override
//  _UpdateFieldScreenState createState() => _UpdateFieldScreenState();
//}
//
//class _UpdateFieldScreenState extends State<UpdateFieldScreen> {
//  final name = TextEditingController();
//
//  String selectedCrop = '';
//  String selectedStatus = '';
//  List<String> availableCrops = [];
//
//  @override
//  void initState() {
//    super.initState();
//    selectedStatus = widget.field.status;
//    selectedCrop = widget.field.crop;
//    name.text = widget.field.name;
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return BlocBuilder<AddFieldBloc, AddFieldState>(
//      builder: (BuildContext context, AddFieldState state) {
//        if (state is InitialAddFieldState) {
//          BlocProvider.of<AddFieldBloc>(context)
//              .add(GetAvailableCropsEvent(token: testToken));
//        }
//        if (state is FieldCropsReadyState) {
//          availableCrops = state.list;
//        }
//        if (state is ErrorFieldState) {
//          showToast(state.error, false);
//        }
//        return ModalProgressHUD(
//          inAsyncCall: state is LoadingFieldState,
//          child: Scaffold(
//            extendBodyBehindAppBar: true,
//            appBar: buildAppBar(context),
//            extendBody: true,
//            body: Stack(
//              children: <Widget>[
//                Container(
//                  color: Colors.grey,
//                ),
//                Align(
//                  alignment: Alignment.bottomCenter,
//                  child: Container(
//                    decoration: BoxDecoration(
//                      color: Colors.white,
//                      borderRadius:
//                          BorderRadius.vertical(top: Radius.circular(20)),
//                    ),
//                    child: Padding(
//                      padding: const EdgeInsets.all(8.0),
//                      child: Column(
//                        crossAxisAlignment: CrossAxisAlignment.start,
//                        mainAxisSize: MainAxisSize.min,
//                        children: <Widget>[
//                          TextFormField(
//                            controller: name,
//                            style: TextStyle(
//                              color: Colors.black,
//                              fontWeight: FontWeight.w500,
//                              letterSpacing: 2,
//                              fontSize: 24,
//                            ),
//                            decoration: InputDecoration(
//                              hintText: 'Farm Name',
//                              hintStyle: TextStyle(
//                                color: Colors.black38,
//                                fontWeight: FontWeight.w300,
//                              ),
//                              enabledBorder: UnderlineInputBorder(
//                                borderSide:
//                                    BorderSide(width: 1, color: Colors.black12),
//                              ),
//                              focusedBorder: UnderlineInputBorder(
//                                borderSide:
//                                    BorderSide(width: 4, color: Colors.black),
//                              ),
//                            ),
//                          ),
//                          DropdownButton<int>(
//                            hint: Text('Select Crop'),
//                            value: availableCrops.indexOf(selectedCrop) < 0
//                                ? null
//                                : availableCrops.indexOf(selectedCrop),
//                            onChanged: (int value) {
//                              setState(() {
//                                selectedCrop = availableCrops[value];
//                              });
//                            },
//                            items: List.generate(
//                              availableCrops.length,
//                              (index) => DropdownMenuItem<int>(
//                                value: index < 0 ? null : index,
//                                child: Text(availableCrops[index]),
//                              ),
//                            ),
//                          ),
//                          Wrap(
//                            children: <Widget>[
//                              buildRadioButton(0),
//                              SizedBox(width: 10),
//                              buildRadioButton(1),
//                              SizedBox(width: 10),
//                              buildRadioButton(2),
//                            ],
//                          )
//                        ],
//                      ),
//                    ),
//                  ),
//                ),
//              ],
//            ),
//          ),
//        );
//      },
//    );
//  }
//
//  Widget buildRadioButton(int value) {
//    return Column(
//      mainAxisSize: MainAxisSize.min,
//      children: <Widget>[
//        Radio<String>(
//          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//          value: stats[value],
//          groupValue: selectedStatus,
//          onChanged: (String value) {
//            setState(() {
//              selectedStatus = value;
//            });
//          },
//        ),
//        Text(
//          stats[value].toUpperCase(),
//          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
//        ),
//      ],
//    );
//  }
//
//  Widget buildAppBar(BuildContext context) {
//    return PreferredSize(
//      preferredSize: Size.fromHeight(kToolbarHeight * 1.5),
//      child: Container(
//        decoration: BoxDecoration(
//          color: transparentWhiteColor,
//          border: Border(
//            bottom: BorderSide(width: 1, color: Colors.black12),
//          ),
//        ),
//        padding: EdgeInsets.only(top: 16),
//        child: AppBar(
//          brightness: Brightness.light,
//          automaticallyImplyLeading: false,
//          actions: <Widget>[
//            FlatButton(
//              onPressed: () {
//                if (selectedStatus.isEmpty) {
//                  showToast('Select Status', false);
//                  return;
//                }
//                if (selectedCrop.isEmpty) {
//                  showToast('Select Crop', false);
//                  return;
//                }
//                if (name.text.isEmpty) {
//                  showToast('Enter Field Name', false);
//                  return;
//                }
//                if (false) {
//                  showToast('Select Field Coordinates', false);
//                  return;
//                }
//                BlocProvider.of<AddFieldBloc>(context).add(UpdateFieldEvent(
//                  token: testToken,
//                  name: name.text,
//                  id: widget.field.id,
//                  crop: selectedCrop,
//                  status: selectedStatus,
//                  onSuccess: () {
//                    BlocProvider.of<FarmBloc>(context)
//                        .add(FetchFieldsEvent(testToken, widget.farm.id));
//                    Navigator.pop(context);
//                  },
//                  coordinates: [
//                    Coordinate([1.0, 2.0]),
//                    Coordinate([1.0, 2.0]),
//                    Coordinate([1.0, 2.0]),
//                    Coordinate([1.0, 2.0]),
//                  ],
//                ));
//              },
//              child: Text(
//                'DONE',
//                style: TextStyle(
//                    fontSize: 18, color: Colors.black, letterSpacing: 2),
//              ),
//            ),
//          ],
//          backgroundColor: Colors.transparent,
//          elevation: 0,
//          leading: IconButton(
//            icon: Icon(
//              FlutterIcons.angle_left_faw,
//              color: Colors.black,
//              size: 48,
//            ),
//            onPressed: () {
//              Navigator.pop(context);
//            },
//          ),
//          title: Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              Text(
//                'Edit Field Coordinates',
//                style: TextStyle(fontSize: 12, color: Colors.black),
//              ),
//              Text(
//                'Update Your Field',
//                style: TextStyle(color: Colors.black, fontSize: 22),
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
