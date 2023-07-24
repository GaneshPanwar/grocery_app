import 'package:flutter/material.dart';
import 'package:grocery_design/src/presentation/views/login_view/login_view.dart';
import 'package:grocery_design/src/presentation/views/signup_view/signup_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  static String id = 'splashview';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 150,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff4ad64f),
                ),
                height: 150,
                width: 150,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Grocery App',
                style: Theme.of(context).textTheme.headlineMedium!.apply(
                      fontWeightDelta: 2,
                    ),
              ),
              const Text(
                'Do not sell or share my personal information',
              ),
              const SizedBox(
                height: 80,
              ),
              ButtonElevated(
                divideby: 1.2,
                text: 'Get Started',
                onPressed: () {
                  Navigator.pushNamed(context, SignUpView.id);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ButtonElevated(
                divideby: 1.2,
                text: 'Sign In',
                onPressed: () {
                  Navigator.pushNamed(context, LoginView.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonElevated extends StatelessWidget {
  const ButtonElevated(
      {super.key, required this.text, required this.onPressed, this.divideby});

  final String text;
  final double? divideby;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith(
          (states) => const Color(0xfffafafa),
        ),
        surfaceTintColor: MaterialStateColor.resolveWith(
          (states) => const Color(0xfffafafa),
        ),
        elevation: MaterialStateProperty.all(10),
        maximumSize: MaterialStateProperty.all(
          Size(
            MediaQuery.sizeOf(context).width / (divideby ?? 1.1),
            100,
          ),
        ),
        minimumSize: MaterialStateProperty.all(
          Size(
            MediaQuery.sizeOf(context).width / (divideby ?? 1.1),
            50,
          ),
        ),
      ),
      child: Text(text),
    );
  }
}
