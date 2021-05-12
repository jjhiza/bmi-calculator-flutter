import 'package:bmi_calculator/theme/custom_theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'layouts/card_layout.dart';
import 'layouts/card_content.dart';
import 'gender_card_gesture.dart';

GenderDetector genderDetector = GenderDetector();

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        genderDetector.maleCardColor =
                            genderDetector.activeCardColor;
                      });
                    },
                    child: BMICardView(
                      genderDetector.maleCardColor,
                      IconContent(FontAwesomeIcons.mars, 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        genderDetector.femaleCardColor =
                            genderDetector.activeCardColor;
                      });
                    },
                    child: BMICardView(
                      genderDetector.femaleCardColor,
                      IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: BMICardView(genderDetector.inactiveCardColor, null),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: BMICardView(genderDetector.inactiveCardColor, null),
                ),
                Expanded(
                  flex: 1,
                  child: BMICardView(genderDetector.inactiveCardColor, null),
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
