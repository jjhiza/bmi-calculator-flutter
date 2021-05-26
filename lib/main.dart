import 'package:bmi_calculator/ResultsPage.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'theme/custom_theme.dart';

void main() => runApp(BMICalculator());

CustomTheme customTheme = CustomTheme();

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: customTheme.getThemeData(),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/results': (context) => ResultsPage(),
      },
    );
  }
}
