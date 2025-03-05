import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String email;

  const HomePage({required this.email, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Extract the part of the email before the '@'
    final username = email.split('@')[0];

    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Text(
          'Hello, $username!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}