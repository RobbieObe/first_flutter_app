import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/sign_in_bloc/sign_in_bloc.dart';
import '../../core/navigation_helper.dart';

class SignInPage extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign In')),
      body: BlocConsumer<SignInBloc, SignInState>(
        listener: (context, state) {
          if (state is SignInSuccess) {
            NavigationHelper.navigateToHome(context, state.email);
          } else if (state is SignInFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error)),
            );
          }
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                ),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    context.read<SignInBloc>().add(
                      SignInButtonPressed(
                        email: _emailController.text,
                        password: _passwordController.text,
                      ),
                    );
                  },
                  child: Text('Sign In'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    context.read<SignInBloc>().add(GoogleSignInButtonPressed());
                  },
                  child: Text('Sign In with Google'),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    NavigationHelper.navigateToSignUp(context);
                  },
                  child: Text('Don\'t have an account? Sign Up'),
                ),
                if (state is SignInLoading) CircularProgressIndicator(),
              ],
            ),
          );
        },
      ),
    );
  }
}