import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_gym_manager/screens/navigator.dart';
import 'package:my_gym_manager/screens/splash/welcome_page.dart';
import 'package:provider/provider.dart';

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if (firebaseUser != null) {
      return BottomNavBar();
    } else {
      return WelcomePage();
    }
  }
}
