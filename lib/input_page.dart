import 'package:bmi_calculator/theme/custom_theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'layouts/card_layout.dart';
import 'layouts/card_content.dart';
import 'layouts/selector.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Selection selection = Selection();
  Gender selectedGender;

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: BMICardView(
                      selectedGender == Gender.male
                          ? activeColor
                          : inactiveColor,
                      IconContent(FontAwesomeIcons.mars, 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: BMICardView(
                      selectedGender == Gender.female
                          ? activeColor
                          : inactiveColor,
                      IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: BMICardView(palette.cardHue, null),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: BMICardView(palette.cardHue, null),
                ),
                Expanded(
                  flex: 1,
                  child: BMICardView(palette.cardHue, null),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: MaterialButton(
              color: palette.sliderAccent,
              minWidth: double.infinity,
              height: 80,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
