import 'package:fade/src/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormFieldTheme {
  TextFormFieldTheme._();

  //dark Theme
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: primaryColor,
    labelStyle: inputFont.apply(color: Colors.white),
    floatingLabelStyle: inputFont.apply(color: Colors.white),
    hintStyle: inputFont.apply(color: Colors.white),
    counterStyle: inputFont.apply(color: Colors.white),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 0.w,
      ),
    ),
  );
}
