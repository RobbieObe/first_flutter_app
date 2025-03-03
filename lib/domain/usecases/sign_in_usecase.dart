import '../repositories/auth_repository.dart';

class SignInUseCase {
  final AuthRepository repository;

  SignInUseCase(this.repository);

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    return await repository.signInWithEmailAndPassword(email, password);
  }

  Future<void> signInWithGoogle() async {
    return await repository.signInWithGoogle();
  }
}