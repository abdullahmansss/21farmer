import 'package:farmers21/constants.dart';
import 'package:farmers21/ui/add_farm/bloc/add_farm_event.dart';
import 'package:farmers21/ui/farms/bloc/farms_bloc.dart';
import 'package:farmers21/ui/farms/bloc/farms_events.dart';
import 'package:farmers21/ui/farms/bloc/farms_model.dart';
import 'package:farmers21/ui/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

import 'bloc/add_farm_bloc.dart';
import 'bloc/add_farm_state.dart';

const List<String> stats = ['perfect', 'good', 'bad'];

class UpdateFarmScreen extends StatefulWidget {
  static const String id = 'add_farm';

  final FarmBody farm;
  final name;

  UpdateFarmScreen(this.farm) : name = TextEditingController(text: farm.name);

  @override
  _UpdateFarmScreenState createState() => _UpdateFarmScreenState();
}

class _UpdateFarmScreenState extends State<UpdateFarmScreen> {
  String selectedStatus = '';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddFarmBloc, AddFarmState>(
      builder: (BuildContext context, AddFarmState state) {
        if (state is ErrorFarmState) {
          showToast(state.error, false);
        }
        return ModalProgressHUD(
          inAsyncCall: state is LoadingFarmState,
          child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: buildAppBar(context),
            extendBody: true,
            body: Stack(
              children: <Widget>[
                Container(
                  color: Colors.grey,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: widget.name,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 2,
                          fontSize: 24,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Farm Name',
                          hintStyle: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w300,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black12),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 4, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight * 1.5),
      child: Container(
        decoration: BoxDecoration(
          color: transparentWhiteColor,
          border: Border(
            bottom: BorderSide(width: 1, color: Colors.black12),
          ),
        ),
        padding: EdgeInsets.only(top: 16),
        child: AppBar(
          brightness: Brightness.light,
          automaticallyImplyLeading: false,
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                if (selectedStatus.isEmpty) {
                  showToast('Select Status', false);
                  return;
                }
                if (widget.name.text.isEmpty) {
                  showToast('Enter Farm Name', false);
                  return;
                }
                if (false) {
                  showToast('Select Farm Coordinates', false);
                  return;
                }
                BlocProvider.of<AddFarmBloc>(context).add(UpdateFarmEvent(
                  token: testToken,
                  name: widget.name.text,
                  id: widget.farm.id,
                  status: selectedStatus,
                  onSuccess: () {
                    BlocProvider.of<FarmsBloc>(context)
                        .add(FetchFarmsEvent(testToken));
                    Navigator.pop(context);
                  },
                  coordinates: [
                    Coordinate([1.0, 2.0]),
                    Coordinate([1.0, 2.0]),
                    Coordinate([1.0, 2.0]),
                    Coordinate([1.0, 2.0]),
                  ],
                ));
              },
              child: Text(
                'DONE',
                style: TextStyle(
                    fontSize: 18, color: Colors.black, letterSpacing: 2),
              ),
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              FlutterIcons.angle_left_faw,
              color: Colors.black,
              size: 48,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Update Farm Coordinates',
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
              Text(
                'Edit Your Farm',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRadioButton(int value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Radio<String>(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          value: stats[value],
          groupValue: selectedStatus,
          onChanged: (String value) {
            setState(() {
              selectedStatus = value;
            });
          },
        ),
        Text(
          stats[value].toUpperCase(),
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
