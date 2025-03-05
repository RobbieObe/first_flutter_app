import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/sign_in_bloc/sign_in_bloc.dart';
import '../../core/navigation_helper.dart';

class HomePage extends StatelessWidget {
  final String email;

  const HomePage({required this.email, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Extract the part of the email before the '@'
    final username = email.split('@')[0];

    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) {
        if (state is SignOutSuccess) {
          // Redirect to Sign In Page after successful sign out
          NavigationHelper.navigateToSignIn(context);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          actions: [
            IconButton(
              onPressed: () {
                // Trigger logout
                context.read<SignInBloc>().add(SignOutButtonPressed());
              },
              icon: Icon(Icons.logout),
            ),
          ],
        ),
        body: Center(
          child: Text(
            'Hello, $username!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}