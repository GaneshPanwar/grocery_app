import 'package:flutter/material.dart';
import 'package:grocery_design/src/config/router.dart';
import 'package:grocery_design/src/config/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery App',
      theme: themeLight,
      routes: routes,
      initialRoute: initialRoute,
    );
  }
}
