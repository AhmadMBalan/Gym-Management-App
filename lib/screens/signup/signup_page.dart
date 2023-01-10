import 'package:flutter/material.dart';
import 'package:my_gym_manager/animation/fade_animation.dart';
import 'package:my_gym_manager/authentication/authentication_service.dart';
import 'package:my_gym_manager/config/palette.dart';
import 'package:my_gym_manager/widgets/make_input.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class SignupPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController gymnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController password1Controller = TextEditingController();
  final TextEditingController password2Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryColor,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Color(0xFFF1F9FD),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20.0,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    FadeAnimation(
                      1.0,
                      Text(
                        'SIGNUP',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    FadeAnimation(
                      1.2,
                      Text(
                        'Create an account for your GYM...',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    FadeAnimation(
                      1.3,
                      MakeInput(
                        label: 'Email',
                        obscureText: false,
                        controllerID: emailController,
                      ),
                    ),
                    FadeAnimation(
                      1.4,
                      MakeInput(
                        label: 'Password',
                        obscureText: true,
                        controllerID: password1Controller,
                      ),
                    ),
                    FadeAnimation(
                      1.5,
                      MakeInput(
                        label: 'Confirm Password',
                        obscureText: true,
                        controllerID: password2Controller,
                      ),
                    ),
                  ],
                ),
                FadeAnimation(
                  1.6,
                  Container(
                    padding: EdgeInsets.only(
                      top: 3.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                        ),
                        top: BorderSide(
                          color: Colors.black,
                        ),
                        left: BorderSide(
                          color: Colors.black,
                        ),
                        right: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60.0,
                      onPressed: () {
                        if (password1Controller.text ==
                            password2Controller.text) {
                          context.read<AuthenticationService>().signUp(
                                email: emailController.text.trim(),
                                password: password1Controller.text.trim(),
                              );
                          Navigator.pop(context);
                        } else {
                          Alert(
                            context: context,
                            type: AlertType.error,
                            title: "Alert",
                            desc: "Both passwords should match each other!",
                            buttons: [
                              DialogButton(
                                child: Text(
                                  "Ok",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                onPressed: () => Navigator.pop(context),
                                width: 120,
                              )
                            ],
                          ).show();
                        }
                      },
                      color: Colors.purple[200],
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                FadeAnimation(
                  1.7,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                      ),
                      Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
