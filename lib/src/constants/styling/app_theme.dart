import 'package:flutter/material.dart';
import 'styling.dart';

class AppTheme {
  AppTheme._();

  static ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(secondary: darkGrey),
    brightness: Brightness.dark,
    canvasColor: darkGrey,
    inputDecorationTheme: TextFormFieldTheme.darkInputDecorationTheme,
    textButtonTheme: CustomTextButtonTheme.darkTextButtonTheme,
  );
}
