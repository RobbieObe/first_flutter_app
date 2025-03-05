import '../repositories/auth_repository.dart';

class SignUpUseCase {
  final AuthRepository repository;

  SignUpUseCase(this.repository);

  Future<void> signUpWithEmailAndPassword(String email, String password) async {
    return await repository.signUpWithEmailAndPassword(email, password);
  }
}