library sign_in_bloc;

import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInInitial()) {
    on<SignInButtonPressed>(_onSignInButtonPressed);
    on<GoogleSignInButtonPressed>(_onGoogleSignInButtonPressed);
  }

  Future<void> _onSignInButtonPressed(
    SignInButtonPressed event,
    Emitter<SignInState> emit,
  ) async {
    emit(SignInLoading());
    try {
      emit(SignInSuccess());
    } catch (e) {
      emit(SignInFailure(error: e.toString()));
    }
  }

  Future<void> _onGoogleSignInButtonPressed(
    GoogleSignInButtonPressed event,
    Emitter<SignInState> emit,
  ) async {
    emit(SignInLoading());
    try {
      emit(SignInSuccess());
    } catch (e) {
      emit(SignInFailure(error: e.toString()));
    }
  }
}