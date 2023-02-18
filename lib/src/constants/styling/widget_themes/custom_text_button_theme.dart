import 'package:fade/src/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomTextButtonTheme {
  CustomTextButtonTheme._();

  //Dark Theme Data for Text Button
  static TextButtonThemeData darkTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: yellow,
      alignment: Alignment.centerLeft,
      textStyle: textButtonFont,
    ),
  );
}
