part of 'sign_in_bloc.dart';

abstract class SignInState {}

class SignInInitial extends SignInState {}

class SignInLoading extends SignInState {}

class SignInSuccess extends SignInState {
  final String email;
  SignInSuccess({required this.email});
}

class SignOutSuccess extends SignInState {}

class SignInFailure extends SignInState {
  final String error;
  SignInFailure({required this.error});
}

class ProfilePictureUpdated extends SignInState {
  final String imageUrl;

  ProfilePictureUpdated({required this.imageUrl});
}