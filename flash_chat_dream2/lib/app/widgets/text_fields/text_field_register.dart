import 'package:flutter/material.dart';

class TextFieldRegisterWidget extends StatelessWidget {
  TextFieldRegisterWidget(
      {Key? key,
      this.onChanged,
      this.hintText,
      this.keyboardType,
      this.controller})
      : super(key: key);
  final Function(String)? onChanged;
  final String? hintText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        onChanged: onChanged,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hintText,
        ),
      ),
    );
  }
}
