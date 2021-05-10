import 'package:flutter/material.dart';
import 'theme/custom_theme.dart';
import 'theme/custom_colors.dart';

void main() => runApp(BMICalculator());

CustomTheme customTheme = CustomTheme();
CustomColors customColors = CustomColors();

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: customTheme.getThemeData(),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Text(
          'Body Text',
          style: TextStyle(
            color: customColors.primaryTextColor,

            /// TODO: isolate this
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}
