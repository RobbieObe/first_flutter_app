part of 'sign_in_bloc.dart';

abstract class SignInEvent {}

class SignInButtonPressed extends SignInEvent {
  final String email;
  final String password;

  SignInButtonPressed({required this.email, required this.password});
}

class GoogleSignInButtonPressed extends SignInEvent {}

class SignOutButtonPressed extends SignInEvent {}