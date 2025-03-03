import '../entities/user.dart';

abstract class AuthRepository {
  Future<void> signInWithEmailAndPassword(String email, String password);
  Future<void> signInWithGoogle();
  Future<User?> getCurrentUser();
  Future<void> signOut();
}