import 'package:flutter/material.dart';

class AppTheme {
  ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
  ThemeData darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
