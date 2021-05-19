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
  // GestureDetector gestureDetector = GestureDetector();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: BMICardView(
                    cardColor: selectedGender == Gender.male
                        ? activeColor
                        : inactiveColor,
                    cardChild: GenderCardContent(FontAwesomeIcons.mars, 'MALE'),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: BMICardView(
                    cardColor: selectedGender == Gender.female
                        ? activeColor
                        : inactiveColor,
                    cardChild:
                        GenderCardContent(FontAwesomeIcons.venus, 'FEMALE'),
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: BMICardView(
              cardColor: palette.cardHue,
              cardChild: SliderBox('HEIGHT'),
              onPress: () {},
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: BMICardView(
                    cardColor: palette.cardHue,
                    cardChild: null,
                    onPress: () {},
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: BMICardView(
                    cardColor: palette.cardHue,
                    cardChild: null,
                    onPress: () {},
                  ),
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
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  color: palette.primaryTextColor,
                  fontSize: 25,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
