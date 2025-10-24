import 'package:flutter/material.dart';
import './standard_input.dart';
import './standard_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/1024px-Google-flutter-logo.svg.png', width: 300,),
            SizedBox(height: 30),
            StandardInput(isObscureText: false, labelText: 'Your name'),
            SizedBox(height: 10),
            StandardInput(isObscureText: false, labelText: 'Email'),
            SizedBox(height: 10),
            StandardInput(isObscureText: true, labelText: 'Password'),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(child: StandardButton(textInfo: 'Sign Up', isAccent: true,)),
              ],
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Sign In',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
