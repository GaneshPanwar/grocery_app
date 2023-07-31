import 'package:flutter/material.dart';
import 'package:grocery_design/src/presentation/widgets/custom_tab_bar/custom_bottom_nav.dart';
import 'package:grocery_design/src/presentation/widgets/button/buttons.dart';
import 'package:grocery_design/src/utils/constants.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  static String id = 'signupview';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SignUp',
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const FieldWithText(
              text: 'Full Name',
              keyboardType: TextInputType.name,
              hintText: 'Aakash Panwar',
            ),
            const FieldWithText(
              text: 'Email Address',
              keyboardType: TextInputType.emailAddress,
              hintText: 'aakash.panwar7073@gmail.com',
            ),
            const FieldWithText(
              text: 'Password',
              hintText: 'Password',
              obscureText: true,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FieldWithText(
                  text: 'DOB',
                  hintText: '12/07/2023',
                  divideBy: 2.3,
                ),
                //TODO: Implement DropdownButton in It.
                FieldWithText(
                  text: 'Gender',
                  divideBy: 2.3,
                  hintText: 'Male/Female',
                ),
              ],
            ),
            const FieldWithText(
              text: 'Phone No.',
              hintText: '+91 1234567890',
            ),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      color: Color(0xff4ad64f),
                    ),
                    text: 'I agree with ',
                    children: [
                      TextSpan(
                        text: 'terms condition ',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'and',
                      ),
                      TextSpan(
                        text: ' privacy',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ButtonElevated(
              divideby: 1.1,
              text: 'Sign Up',
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  CustomBottomNav.id,
                );
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
                text: 'Already have an account?',
                children: [
                  TextSpan(
                    text: ' Login',
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

class FieldWithText extends StatelessWidget {
  const FieldWithText({
    super.key,
    required this.text,
    this.keyboardType,
    this.hintText,
    this.obscureText,
    this.divideBy,
  });
  final String text;
  final TextInputType? keyboardType;
  final String? hintText;
  final bool? obscureText;
  final double? divideBy;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 8,
          ),
          child: Text(
            text,
            style: Theme.of(context).textTheme.headlineSmall!.apply(
                  fontSizeFactor: 0.8,
                ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1),
          ),
          width: MediaQuery.sizeOf(context).width / (divideBy ?? 1.1),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
            ),
            keyboardType: keyboardType,
            obscureText: obscureText ?? false,
          ),
        ),
      ],
    );
  }
}
