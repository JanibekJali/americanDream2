import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  final String? name;
  final String? email;
  final String? id;

  UserModel({this.name, this.email, this.id});
  // UserModel fromJson(){}
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'id': id,
    };
  }
}
