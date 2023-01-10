import 'package:flutter/material.dart';
import 'package:my_gym_manager/animation/fade_animation.dart';
import 'package:my_gym_manager/authentication/authentication_service.dart';
import 'package:my_gym_manager/config/palette.dart';
import 'package:provider/provider.dart';
import 'package:my_gym_manager/widgets/make_input.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryColor,
      resizeToAvoidBottomInset: false,
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
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        FadeAnimation(
                          1.0,
                          Text(
                            'LOGIN',
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
                            'Login to your GYM',
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 15.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                      child: Column(
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
                              controllerID: passwordController,
                            ),
                          ),
                        ],
                      ),
                    ),
                    FadeAnimation(
                      1.5,
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 40.0,
                        ),
                        child: Container(
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
                              context.read<AuthenticationService>().signIn(
                                    email: emailController.text.trim(),
                                    password: passwordController.text.trim(),
                                  );
                              Navigator.pop(context);
                            },
                            color: Color(0xFFC9C7F1),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(50.0)),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    FadeAnimation(
                      1.6,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account? ',
                          ),
                          Text(
                            'Sign up',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    FadeAnimation(
                      1.7,
                      Container(
                        height: MediaQuery.of(context).size.height / 3,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/gym_coach_trainer_fitness-512.png'),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
