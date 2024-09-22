

import 'package:flutter/material.dart';

class AppTheme{

  ThemeData ligthTheme =ThemeData(
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          )
      )
  );

  ThemeData darkTheme =ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blue,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 22,
        fontWeight: FontWeight.w500,
      )
    )
  );
}