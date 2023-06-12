import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat_dream2/app/widgets/text_fields/text_field_register.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String id = '12345436475dfdgd';
//     CollectionReference users = FirebaseFirestore.instance.collection('users');
// Future<void> addUser(){

// }
  final users = FirebaseFirestore.instance.collection('users');
  Future<void> addUser() {
    return users
        .add({
          'name': nameController.text,
          'email': emailController.text,
          'id': id,
        })
        .then((value) => log("User Added"))
        .catchError((error) => log("Failed to add user: $error"));
  }

  Future<void> signUp() async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: emailController.text,
            password: passwordController.text,
          )
          .then((value) => {
                addUser(),
              });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        log('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        log('The account already exists for that email.');
      }
    } catch (e) {
      log('e ==> $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(
      height: 20,
    );
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFieldRegisterWidget(
            controller: nameController,
            hintText: 'Enter your name',
            onChanged: (value) {},
            keyboardType: TextInputType.name,
          ),
          sizedBox,
          TextFieldRegisterWidget(
            controller: emailController,
            hintText: 'Enter your email',
            onChanged: (value) {},
            keyboardType: TextInputType.emailAddress,
          ),
          sizedBox,
          TextFieldRegisterWidget(
            controller: passwordController,
            hintText: 'Enter your password',
            onChanged: (value) {},
            keyboardType: TextInputType.number,
          ),
          sizedBox,
          sizedBox,
          InkWell(
            onTap: () {
              signUp();
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(15)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 130, vertical: 12),
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


// CRUD
// C- create
// Read
// Update
// Delete