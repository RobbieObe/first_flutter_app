import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    return await remoteDataSource.signInWithEmailAndPassword(email, password);
  }

  @override
  Future<String> signInWithGoogle() async {
    return await remoteDataSource.signInWithGoogle();
  }

  @override
  Future<void> signUpWithEmailAndPassword(String email, String password) async {
    return await remoteDataSource.signUpWithEmailAndPassword(email, password);
  }

  @override
  Future<User?> getCurrentUser() async {
    return await remoteDataSource.getCurrentUser();
  }

  @override
  Future<void> signOut() async {
    return await remoteDataSource.signOut();
  }
}