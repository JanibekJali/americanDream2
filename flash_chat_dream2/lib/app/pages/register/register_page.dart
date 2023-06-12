import 'package:flash_chat_dream2/app/widgets/text_fields/text_field_register.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
            hintText: 'Enter your name',
            onChanged: (value) {},
            keyboardType: TextInputType.name,
          ),
          sizedBox,
          TextFieldRegisterWidget(
            hintText: 'Enter your email',
            onChanged: (value) {},
            keyboardType: TextInputType.emailAddress,
          ),
          sizedBox,
          TextFieldRegisterWidget(
            hintText: 'Enter your password',
            onChanged: (value) {},
            keyboardType: TextInputType.number,
          ),
        ],
      ),
    );
  }
}
