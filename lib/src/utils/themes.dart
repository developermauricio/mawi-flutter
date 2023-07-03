import 'package:flutter/material.dart';
import 'package:mawi/src/utils/colors.dart';

class ThemeClass {
  static ThemeData lightTheme = ThemeData(
      primaryColor: ThemeData.light().scaffoldBackgroundColor,
      colorScheme:
          const ColorScheme.light().copyWith(primary: MyColor.blackColor));

  static ThemeData darkTheme = ThemeData(
      primaryColor: ThemeData.dark().scaffoldBackgroundColor,
      colorScheme:
          const ColorScheme.dark().copyWith(primary: MyColor.whiteColor));
}
