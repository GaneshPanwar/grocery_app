import 'package:flutter/material.dart';
import 'package:grocery_design/src/presentation/views/login_view/login_view.dart';
import 'package:grocery_design/src/presentation/views/signup_view/signup_view.dart';
import 'package:grocery_design/src/presentation/widgets/button/buttons.dart';
import 'package:grocery_design/src/utils/constants.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  static String id = 'onboardingview';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              200.height,
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  // color: const Color(0xff4ad64f),
                ),
                height: 100,
                width: 100,
                child: const Icon(
                  Icons.qr_code_scanner_outlined,
                  size: 100,
                ),
              ),
              20.height,
              Text(
                'Grocery App',
                style: Theme.of(context).textTheme.headlineMedium!.apply(
                      fontWeightDelta: 2,
                    ),
              ),
              const Text(
                'Do not sell or share my personal information',
              ),
              80.height,
              ButtonElevated(
                divideby: 1.2,
                text: 'Get Started',
                onPressed: () {
                  Navigator.pushNamed(context, SignUpView.id);
                },
              ),
              10.height,
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
