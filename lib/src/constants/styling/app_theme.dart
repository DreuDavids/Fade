import 'package:flutter/material.dart';
import 'styling.dart';

class AppTheme {
  AppTheme._();

  static ThemeData darkTheme = ThemeData(
      colorScheme: const ColorScheme.dark(secondary: darkGrey),
      brightness: Brightness.dark,
      canvasColor: darkGrey,
      inputDecorationTheme: TextFormFieldTheme.darkInputDecorationTheme,
      textButtonTheme: CustomTextButtonTheme.darkTextButtonTheme
      // elevatedButtonTheme: CustomElevatedButtonTheme.darkElevatedButtonTheme,

      // appBarTheme: CustomAppBarTheme.darkAppBarTheme,
      // expansionTileTheme: CustomExpansionTileTheme.darkExpansionTileTheme,
      // textTheme: CustomTextFieldTheme.darkTextStyle,
      // //this divider color transparent removes the divider Expansion widget has by default
      // dividerColor: Colors.transparent,
      );
}
