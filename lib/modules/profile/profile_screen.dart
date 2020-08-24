//import 'package:farmers21/ui/devices/bloc/gateways_bloc.dart';
//import 'package:farmers21/ui/devices/bloc/gateways_events.dart';
//import 'package:farmers21/ui/farms/bloc/farms_bloc.dart';
//import 'package:farmers21/ui/farms/bloc/farms_events.dart';
//import 'package:farmers21/ui/on_board/on_board_page.dart';
//import 'package:farmers21/ui/profile/bloc/events.dart';
//import 'package:farmers21/ui/profile/bloc/states.dart';
//import 'file:///D:/Softagi/Projects/Rootair/farmer/lib/shared/components/pass_dialog.dart';
//import 'file:///D:/Softagi/Projects/Rootair/farmer/lib/shared/components/text_form_field_profile.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:flutter_icons/flutter_icons.dart';
//import 'package:modal_progress_hud/modal_progress_hud.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//
//import '../../shared/components/constants.dart';
//import 'bloc/bloc.dart';
//
//class ProfileScreen extends StatelessWidget {
//  static const id = 'profileScreen';
//
////  bool isEditing = false;
//
////  bool isShow = false;
////  bool isShowProgress = false;
//
//  final TextEditingController nameController = TextEditingController();
//  final TextEditingController emailController = TextEditingController();
//  final TextEditingController phoneController = TextEditingController();
//
////  ProfileBloc bloc = ProfileBloc();
//
////  String name = '';
////  String email = '';
////  String mobile = '';
//
////  @override
////  void initState() {
////    super.initState();
////    SharedPreferences.getInstance().then((value) {
////      name = value.getString('name');
////      email = value.getString('email');
////      mobile = value.getString('mobile');
////
////      nameController.text = name;
////      emailController.text = email;
////      phoneController.text = mobile;
////    });
////  }
//
//  @override
//  Widget build(BuildContext context) {
//    return BlocProvider(
//      create: (BuildContext context) => ProfileBloc(),
//      child: BlocBuilder<ProfileBloc, ProfileStates>(
//        builder: (BuildContext context, ProfileStates state) {
//          if (state is InitialState) {
//            BlocProvider.of<ProfileBloc>(context).add(FetchUserDataEvent());
//          }
//          if (state is ErrorState) {
//            showToast(state.error, false);
//          }
//          final isEditing = BlocProvider.of<ProfileBloc>(context).isEditing;
//          nameController.text = BlocProvider.of<ProfileBloc>(context).name;
//          emailController.text = BlocProvider.of<ProfileBloc>(context).email;
//          phoneController.text = BlocProvider.of<ProfileBloc>(context).mobile;
//          return ModalProgressHUD(
//            inAsyncCall: state is LoadingProfileState,
//            child: Scaffold(
//              appBar: AppBar(
//                elevation: 5,
//                title: Text(
//                  'Your profile',
//                  style: TextStyle(
//                    fontSize: 22,
//                    color: Colors.white,
//                  ),
//                ),
//                leading: IconButton(
//                  icon: Icon(
//                    FlutterIcons.angle_left_faw,
//                    size: 22,
//                    color: Colors.white,
//                  ),
//                  onPressed: () {
//                    Navigator.pop(context);
//                  },
//                ),
//              ),
//              floatingActionButton: FloatingActionButton(
//                onPressed: () {
//                  BlocProvider.of<ProfileBloc>(context).add(ToggleEditingEvent(() {
//                    BlocProvider.of<ProfileBloc>(context).add(UpdateUserDataEvent(
//                      testToken,
//                      nameController.text,
//                      emailController.text,
//                      phoneController.text,
//                    ));
//                  }));
////              if (!isEditing) {
////                isEditing = true;
////                if (mounted) setState(() {});
////              } else {
////                isEditing = false;
////                if (mounted) setState(() {});
////
////                isShowProgress = true;
////                updateData();
////              }
//                },
//                backgroundColor: isEditing ? kWhite : kTeal,
//                foregroundColor: isEditing ? kTeal : kWhite,
//                child: Icon(isEditing ? Icons.check : Icons.edit),
//              ),
//              body: SingleChildScrollView(
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  mainAxisSize: MainAxisSize.max,
//                  children: <Widget>[
//                    SizedBox(
//                      height: 32,
//                    ),
//                    Padding(
//                      padding: EdgeInsets.symmetric(horizontal: 16),
//                      child: MyTextFormFieldProfile(
//                        controller: nameController,
//                        isEnable: isEditing,
//                        hint: 'Full Name',
//                        inputType: TextInputType.text,
//                      ),
//                    ),
//                    SizedBox(
//                      height: 16,
//                    ),
//                    Padding(
//                      padding: EdgeInsets.symmetric(horizontal: 16),
//                      child: MyTextFormFieldProfile(
//                        isEnable: isEditing,
//                        controller: emailController,
//                        hint: 'Email',
//                        inputType: TextInputType.emailAddress,
//                      ),
//                    ),
//                    SizedBox(
//                      height: 16,
//                    ),
//                    Padding(
//                      padding: EdgeInsets.symmetric(horizontal: 16),
//                      child: MyTextFormFieldProfile(
//                        controller: phoneController,
//                        isEnable: isEditing,
//                        hint: 'Phone',
//                        inputType: TextInputType.phone,
//                      ),
//                    ),
//                    SizedBox(
//                      height: 32,
//                    ),
//                    Row(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      children: <Widget>[
//                        MaterialButton(
//                          shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.all(
//                              Radius.circular(10.0),
//                            ),
//                          ),
//                          color: kTeal,
//                          onPressed: () async {
//                            SharedPreferences.getInstance().then((value) {
//                              testToken = '';
//                              BlocProvider.of<FarmsBloc>(context).add(InitialFarmsEvent());
//                              BlocProvider.of<GatewaysBloc>(context).add(InitialDevicesEvent());
//                              value.clear().then((value) {
//                                Navigator.pushAndRemoveUntil(
//                                  context,
//                                  MaterialPageRoute(builder: (context) => OnBoardScreen()),
//                                  (route) => false,
//                                );
//                              });
//                            });
//                          },
//                          child: Padding(
//                            padding: const EdgeInsets.all(15.0),
//                            child: Text(
//                              'Logout',
//                              style: TextStyle(
//                                color: kWhite,
//                              ),
//                            ),
//                          ),
//                        ),
//                        SizedBox(
//                          width: 16,
//                        ),
//                        MaterialButton(
//                          shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.all(
//                              Radius.circular(10.0),
//                            ),
//                          ),
//                          color: kTeal,
//                          onPressed: () async {
//                            Map<String, String> pass = await openDialog(context);
//                            if (pass == null) return;
//                            String oldPass = pass['oldPass'];
//                            String newPass = pass['newPass'];
//                            String rePass = pass['rePass'];
//                            BlocProvider.of<ProfileBloc>(context).add(ChangePasswordEvent(
//                              testToken,
//                              oldPass,
//                              newPass,
//                              rePass,
//                            ));
//                          },
//                          child: Padding(
//                            padding: const EdgeInsets.all(15.0),
//                            child: Text(
//                              'Change password',
//                              style: TextStyle(
//                                color: kWhite,
//                              ),
//                            ),
//                          ),
//                        ),
//                      ],
//                    )
//                  ],
//                ),
//              ),
//            ),
//          );
//        },
//      ),
//    );
//  }
//
//  Future<Map<String, String>> openDialog(BuildContext context) async {
//    return await showDialog(
//      context: context,
//      builder: (BuildContext context) => PassDialog(),
//    );
//  }
////
////  saveData(var d) async {
////    SharedPreferences prefs = await SharedPreferences.getInstance();
////    prefs.setInt("id", d['id']);
////    prefs.setString("name", d['name']);
////    prefs.setString("email", d['email']);
////    prefs.setString("token", d['api_token']);
////
////    testToken = d['api_token'];
////  }
//
////  getData() {
////    bloc.getData(
////      api_token: testToken,
////    );
////    bloc.getting.listen((event) {
////      switch (event.status) {
////        case Status.LOADING:
////          isShow = true;
////          if (mounted) setState(() {});
////          break;
////        case Status.COMPLETED:
////          isShow = false;
////
////          var d = event.data['data'];
////          name = d['name'];
////          email = d['email'];
////          mobile = d['mobile'];
////
////          saveData(d);
////
////          nameController.text = name;
////          emailController.text = email;
////
////          print(name);
////          print(email);
////          print(mobile);
////
////          isEditing = false;
////          if (mounted) setState(() {});
////          break;
////        case Status.ERROR:
////          isShow = false;
////          showToast('حدث خطأ ما', false);
////          if (mounted) setState(() {});
////          break;
////      }
////    });
////  }
////
////  updateData() {
////    bloc.updateData(
////      api_token: testToken,
////      mobile: phoneController.text,
////      email: emailController.text,
////      name: nameController.text,
////    );
////    bloc.updating.listen((event) {
////      switch (event.status) {
////        case Status.LOADING:
////          isShowProgress = true;
////          isShow = true;
////          if (mounted) setState(() {});
////          break;
////        case Status.COMPLETED:
////          isShowProgress = false;
//////          showToast(event.data['statusCode'], event.data['status']);
//////          getData();
////          break;
////        case Status.ERROR:
////          isShowProgress = false;
////          isShow = false;
////          showToast('حدث خطأ ما', false);
////          if (mounted) setState(() {});
////          break;
////      }
////    });
////  }
////
////  changePass(String old, String neo, String re) {
////    print(old);
////    print(re);
////    print(neo);
////    bloc.changePass(
////      api_token: testToken,
////      password_confirmation: re,
////      new_password: neo,
////      current_password: old,
////    );
////    bloc.changing.listen((event) {
////      switch (event.status) {
////        case Status.LOADING:
////          isShow = true;
////          if (mounted) setState(() {});
////          break;
////        case Status.COMPLETED:
////          isShow = false;
////          if (mounted) setState(() {});
////          print(event.data);
////          if (event.data['status']) {
////            SharedPreferences.getInstance().then((value) {
////              value.remove('id');
////              value.remove('name');
////              value.remove('email');
////              value.remove('token');
////              showToast(event.data['message'], true);
////            });
////          } else {
////            String m = event.data['message'];
////            if (m != null) {
////              showToast(m, false);
////              return;
////            } else {
////              var d = event.data['messages'];
////              var err_pass = d['current_password'];
////              var err_new_pass = d['new_password'];
////              var err_re_pass = d['password_confirmation'];
////
////              String s = '';
////              if (err_pass != null) {
////                if (s.isNotEmpty) s += '\n';
////                s += err_pass[0];
////              }
////              if (err_new_pass != null) {
////                if (s.isNotEmpty) s += '\n';
////                s += err_new_pass[0];
////              }
////              if (err_re_pass != null) {
////                if (s.isNotEmpty) s += '\n';
////                s += err_re_pass[0];
////              }
////
////              showToast(s, false);
////            }
////          }
////          break;
////        case Status.ERROR:
////          isShow = false;
////          showToast(event.message, false);
////          if (mounted) setState(() {});
////          break;
////      }
////    });
////  }
//}
