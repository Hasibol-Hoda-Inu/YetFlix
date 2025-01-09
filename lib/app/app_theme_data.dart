import 'package:flutter/material.dart';

class AppThemeData{
  static ThemeData get lightThemeData{
    return ThemeData(
        colorSchemeSeed: const Color(0xff393B48),
        scaffoldBackgroundColor: Colors.white,
        inputDecorationTheme: const InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          hintStyle: TextStyle(
            color: Color(0xffC4C4C4),
            fontWeight: FontWeight.w400,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
                foregroundColor: Colors.grey,
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                )
            )
        )
    );
  }

  static ThemeData get darkThemeData{
    return ThemeData(
      colorSchemeSeed: const Color(0xff1D212D),
      brightness: Brightness.dark,
      inputDecorationTheme: const InputDecorationTheme(
        fillColor: Color(0xff393B48),
        filled: true,
        hintStyle: TextStyle(
          color: Color(0xff717171),
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}