import 'package:farmers21/ui/home/home_screen.dart';
import 'package:farmers21/ui/sign_in/bloc/login_model.dart';
import 'package:farmers21/ui/sign_in/sign_in_screen.dart';
import 'package:farmers21/ui/sign_up/bloc/register_bloc.dart';
import 'package:farmers21/ui/sign_up/bloc/register_events.dart';
import 'package:farmers21/ui/sign_up/bloc/register_states.dart';
import 'package:farmers21/widgets/password_form_field.dart';
import 'package:farmers21/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants.dart';

class SignUpScreen extends StatelessWidget {
  static const id = 'register';

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterStates>(
      builder: (BuildContext context, state) {
        if (state is ErrorRegisterState) {
          showToast(state.error, false);
        }
        return ModalProgressHUD(
          inAsyncCall: state is LoadingState,
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              centerTitle: true,
              elevation: 0,
              title: Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 22,
                  color: kWhite,
                ),
              ),
              leading: IconButton(
                icon: Icon(
                  FlutterIcons.angle_left_faw,
                  size: 22,
                  color: kWhite,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: MyTextFormField(
                    controller: nameController,
                    hint: 'Full Name',
                    inputType: TextInputType.text,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: MyTextFormField(
                    controller: emailController,
                    hint: 'Email',
                    inputType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: MyTextFormField(
                    controller: phoneController,
                    hint: 'Phone',
                    inputType: TextInputType.phone,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: PasswordFormField(
                    controller: passController,
                    hint: 'Password',
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: PasswordFormField(
                    controller: confirmController,
                    hint: 'Confirm Password',
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: FloatingActionButton(
                      child: Icon(
                        FlutterIcons.angle_right_faw,
                        color: Colors.white,
                        size: 32,
                      ),
                      elevation: 4,
                      focusElevation: 8,
                      backgroundColor: Colors.teal,
                      onPressed: () {
                        BlocProvider.of<RegisterBloc>(context).add(RegisterEvent(
                          nameController.text,
                          emailController.text,
                          phoneController.text,
                          passController.text,
                          confirmController.text,
                          onSuccess: (LoginBody loginBody) {
                            testToken = loginBody.token;
                            SharedPreferences.getInstance().then((value) async {
                              bool b = false;
                              b = await value.setString('name', loginBody.user.name);
                              b &= await value.setString('email', loginBody.user.email);
                              b &= await value.setString('mobile', loginBody.user.mobile);
                              b &= await value.setString('token', loginBody.token);
                              if (b) {
                                print('succeeded $testToken');
                                Navigator.pushAndRemoveUntil(
                                    context, MaterialPageRoute(builder: (context) => HomeScreen()), (route) => false);
                              } else {
                                showToast('Some error happened', false);
                                print('failed');
                              }
                            });
                          },
                        ));
                      },
                    ),
                  ),
                ),
                Spacer(flex: 1),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: FlatButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, SignInScreen.id);
                    },
                    child: Text(
                      "Already have account",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
