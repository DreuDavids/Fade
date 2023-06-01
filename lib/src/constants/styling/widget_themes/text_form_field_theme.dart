import 'package:fade/src/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFormFieldTheme {
  TextFormFieldTheme._();

  //dark Theme
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: primaryColor,
    contentPadding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 15.w),
    labelStyle: inputAltFont.apply(color: Colors.white),
    floatingLabelBehavior: FloatingLabelBehavior.never,
    floatingLabelStyle: inputAltFont.apply(color: Colors.white),
    hintStyle: inputAltFont.apply(color: Colors.white),
    counterStyle: inputAltFont.apply(color: Colors.white),
    border: InputBorder.none,
  );
}
