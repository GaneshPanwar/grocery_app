import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocery_design/src/presentation/views/onboarding_view/onboarding_view.dart';
import 'package:grocery_design/src/utils/constants.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  static String id = 'splashview';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.pushNamedAndRemoveUntil(
            context, OnboardingView.id, (route) => false);
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    Timer(const Duration(seconds: 6), () {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 150,
                width: 150,
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
            ],
          ),
        ),
      ),
    );
  }
}
