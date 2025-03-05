import 'package:flutter/material.dart';
import '../presentation/pages/home_page.dart';

class NavigationHelper {
  static void navigateToSignIn(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/sign-in');
  }

  static void navigateToSignUp(BuildContext context) {
    Navigator.pushNamed(context, '/sign-up');
  }

  static void navigateToHome(BuildContext context, String email) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(email: email),
      ),
    );
  }
}