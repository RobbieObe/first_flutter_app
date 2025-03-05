import 'package:flutter/material.dart';

class NavigationHelper {
  static void navigateToSignIn(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/sign-in');
  }

  static void navigateToSignUp(BuildContext context) {
    Navigator.pushNamed(context, '/sign-up');
  }
}