import 'package:bmi_calculator/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'layouts/card_layout.dart';

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
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: BMICardView(palette.cardHue),
                ),
                Expanded(
                  flex: 1,
                  child: BMICardView(palette.cardHue),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: BMICardView(palette.cardHue),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: BMICardView(palette.cardHue),
                ),
                Expanded(
                  flex: 1,
                  child: BMICardView(palette.cardHue),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
