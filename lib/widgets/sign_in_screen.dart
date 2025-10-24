import 'package:flutter/material.dart';
import './standard_input.dart';
import './standard_button.dart';
import './sign_up_screen.dart';
import './reset_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
            StandardInput(isObscureText: false, labelText: 'Email'),
            SizedBox(height: 10),
            StandardInput(isObscureText: true, labelText: 'Password'),
            SizedBox(height: 20),
            Row(
              children: [Expanded(child: StandardButton(textInfo: 'Sign in', isAccent: true,))],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: StandardButton(
                    textInfo: 'Sign up',
                    onClick: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ResetPasswordScreen(),
                ),
              ),
              child: const Text(
                'Forget password?',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
