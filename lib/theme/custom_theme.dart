import 'package:flutter/material.dart';

import 'custom_colors.dart';

CustomColors customColors = CustomColors();

class CustomTheme {
  ThemeData _themeData = ThemeData(
    primaryColor: customColors.bgAppBar,
    accentColor: customColors.sliderAccent,
    scaffoldBackgroundColor: customColors.bgHue,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: customColors.primaryTextColor,
      ),
    ),
  );
  getThemeData() {
    return _themeData;
  }
}
