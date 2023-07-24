import 'package:flutter/material.dart';


/// Dark Theme ///
ThemeData themeDark = ThemeData(
  brightness: Brightness.dark,
  primaryColorDark: Colors.greenAccent,
  primarySwatch: Colors.green,
  useMaterial3: true,
);


/// Light Theme ///
ThemeData themeLight = ThemeData(
  brightness: Brightness.light,
  primaryColorLight: Colors.greenAccent,
  primarySwatch: Colors.red,
  appBarTheme:const  AppBarTheme(
    backgroundColor: Colors.greenAccent,
  ),
  drawerTheme:const DrawerThemeData(
    backgroundColor: Colors.greenAccent,
  ),
  useMaterial3: true,
);
