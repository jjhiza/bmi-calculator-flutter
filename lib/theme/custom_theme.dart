import 'package:flutter/material.dart';
import 'custom_colors.dart';

CustomColors customColors = CustomColors();

class CustomTheme {
  /// NOTE: The below ThemeData.dark() function allows us to copy the styling of the default Dark theme, and simply modify the contents that we specify
  ///

  // ThemeData newTheme = ThemeData.dark().copyWith(),
  ThemeData _themeData = ThemeData(
    primaryColor: customColors.bgAppBar,
    accentColor: customColors.sliderAccent,
    scaffoldBackgroundColor: customColors.bgHue,
    primaryTextTheme: TextTheme(
      /// changes appBar text color
      headline6: TextStyle(
        color: customColors.primaryTextColor,
      ),
    ),
    textTheme: TextTheme(
      bodyText2: TextStyle(
        color: customColors.primaryTextColor,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: customColors.fobColor,
    ),
  );
  getThemeData() {
    return _themeData;
  }
}
