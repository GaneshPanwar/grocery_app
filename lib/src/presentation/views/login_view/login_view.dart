import 'package:flutter/material.dart';
import 'package:grocery_design/src/presentation/views/signup_view/signup_view.dart';
import 'package:grocery_design/src/presentation/views/splash_view/splash_view.dart';
import 'package:grocery_design/src/utils/constants.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static String id = 'loginview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign In',
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff4ad64f),
              ),
              height: 150,
              width: 150,
            ),
            50.height,
            const FieldWithText(
              text: 'Email Address',
              hintText: 'aakash.panwar7073@gmail.com',
            ),
            const FieldWithText(
              text: 'Password',
              hintText: 'Password',
              obscureText: true,
            ),
            const Text(
              'Forgot Password?',
              textAlign: TextAlign.right,
            ),
            20.height,
            ButtonElevated(
              divideby: 1.1,
              text: 'Sign In',
              onPressed: () {
                print('Button Pressed Sign Up');
              },
            ),
            20.height,
            const Text(
              'Or',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            20.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonElevated(
                  divideby: 8,
                  text: 'G',
                  onPressed: () {
                    print('Button Pressed G');
                  },
                ),
               20.height,
                ButtonElevated(
                  divideby: 8,
                  text: 'I',
                  onPressed: () {
                    print('Button Pressed I');
                  },
                ),
               20.height,
                ButtonElevated(
                  divideby: 8,
                  text: 'T',
                  onPressed: () {
                    print('Button Pressed T');
                  },
                ),
              ],
            ),
            20.height,
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  color: Color(0xff4ad64f),
                ),
                text: 'Don\'t have an account?',
                children: [
                  TextSpan(
                    text: ' Sign Up',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
