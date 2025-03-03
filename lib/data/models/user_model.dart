import '../../domain/entities/user.dart'; // Import the User entity

class UserModel {
  final String? id;
  final String email;
  final String? name;
  final String? photoUrl;

  UserModel({this.id, required this.email, this.name, this.photoUrl});

  // Convert UserModel to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'photoUrl': photoUrl,
    };
  }

  // Convert JSON to UserModel
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      name: json['name'],
      photoUrl: json['photoUrl'],
    );
  }

  // Convert UserModel to User entity
  User toUser() {
    return User(
      id: id,
      email: email,
      name: name,
      photoUrl: photoUrl,
    );
  }
}