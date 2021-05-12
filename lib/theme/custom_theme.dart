import 'package:flutter/material.dart';
import 'custom_colors.dart';

CustomColors palette = CustomColors();

class CustomTheme {
  /// NOTE: The below ThemeData.dark() function allows us to copy the styling of the default Dark theme, and simply modify the contents that we specify
  ///

  // ThemeData newTheme = ThemeData.dark().copyWith(),
  ThemeData _themeData = ThemeData(
    primaryColor: palette.bgAppBar,
    accentColor: palette.sliderAccent,
    scaffoldBackgroundColor: palette.bgHue,
    primaryTextTheme: TextTheme(
      /// changes appBar text color
      headline6: TextStyle(
        color: palette.primaryTextColor,
      ),
    ),
    textTheme: TextTheme(
      bodyText2: TextStyle(
        color: palette.primaryTextColor,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: palette.fobColor,
    ),
  );
  getThemeData() {
    return _themeData;
  }
}
