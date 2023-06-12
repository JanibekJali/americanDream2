import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  String? name;
  String? email;
  String? id;
  String? password;

  UserModel({this.name, this.email, this.id, this.password});
  // UserModel fromJson(){}
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'id': id,
    };
  }
}

// final UserModel userModel = UserModel();
