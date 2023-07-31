import 'package:flutter/material.dart';
import 'package:grocery_design/src/presentation/views/cart_view/cart_view.dart';
import 'package:grocery_design/src/presentation/widgets/custom_tab_bar/custom_bottom_nav.dart';
import 'package:grocery_design/src/presentation/views/login_view/login_view.dart';
import 'package:grocery_design/src/presentation/views/onboarding_view/onboarding_view.dart';
import 'package:grocery_design/src/presentation/views/profile_view/profile_view.dart';
import 'package:grocery_design/src/presentation/views/signup_view/signup_view.dart';
import 'package:grocery_design/src/presentation/views/splash_view/splash_view.dart';

import '../presentation/views/home_view/home_view.dart';

/// Initial Route ///
String initialRoute = SplashView.id;

/// Routes 
Map<String, Widget Function(BuildContext)> routes = {
  SplashView.id: (context) => const SplashView(),
  LoginView.id: (context) => const LoginView(),
  SignUpView.id: (context) => const SignUpView(),
  HomeView.id: (context) => const HomeView(),
  ProfileView.id: (context) => const ProfileView(),
  CartView.id: (context) => const CartView(),
  OnboardingView.id: (context) => const OnboardingView(),
  CustomBottomNav.id:(context) => const CustomBottomNav(),
};