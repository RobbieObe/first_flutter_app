import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/sign_in_bloc/sign_in_bloc.dart';
import '../../core/navigation_helper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class HomePage extends StatefulWidget {
  final String email;
  const HomePage({required this.email, Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File? _profileImage;
  String? _profileImageUrl;

  Future<void> _uploadProfilePicture() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });

      // Upload to Firebase Storage
      final storageRef = FirebaseStorage.instance
          .ref()
          .child('profile_pictures/${widget.email}.jpg');
      
      await storageRef.putFile(_profileImage!);
      
      // Get download URL
      final downloadUrl = await storageRef.getDownloadURL();
      
      setState(() {
        _profileImageUrl = downloadUrl;
      });
      
    }
  }

  @override
  Widget build(BuildContext context) {
    final username = widget.email.split('@')[0];

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            onPressed: () => context.read<SignInBloc>().add(SignOutButtonPressed()),
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: _uploadProfilePicture,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: _profileImageUrl != null
                    ? NetworkImage(_profileImageUrl!)
                    : AssetImage('assets/default_profile.png') as ImageProvider,
                child: _profileImageUrl == null
                    ? Icon(Icons.camera_alt, size: 30)
                    : null,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Hello, $username!',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
