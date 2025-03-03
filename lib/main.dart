import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sign_in_app/data/datasources/auth_remote_data_source.dart';
import 'package:sign_in_app/data/repositories_impl/auth_repository_impl.dart';
import 'package:sign_in_app/domain/usecases/sign_in_usecase.dart';
import 'package:sign_in_app/presentation/bloc/sign_in_bloc/sign_in_bloc.dart';
import 'package:sign_in_app/presentation/pages/sign_in_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => SignInBloc(
          signInUseCase: SignInUseCase(
            AuthRepositoryImpl(
              AuthRemoteDataSourceImpl(),
            ),
          ),
        ),
        child: SignInPage(),
      ),
    );
  }
}