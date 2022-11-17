import 'package:flutter/material.dart';

class ThemeDatas {
  ThemeData light = ThemeData(
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Colors.black,
          onPrimary: Colors.white,
          secondary: Colors.red,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.red,
          background: Colors.grey,
          onBackground: Colors.white,
          surface: Colors.red,
          onSurface: Colors.white),
      primarySwatch: Colors.blue,
      appBarTheme: const AppBarTheme(backgroundColor: Colors.black));
}
