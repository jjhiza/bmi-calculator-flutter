import 'package:bmi_calculator/theme/custom_theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'layouts/card_template.dart';
import 'layouts/gender_card.dart';
import 'layouts/selector.dart';
import 'layouts/slider.dart';
import 'layouts/weight_and_age.dart';

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
                    cardChild: WeightAndAge(
                      toggleWeightSizeBox: true,
                      toggleAgeSizeBox: false,
                      showWeight: true,
                      showAge: false,
                      subText: 'WEIGHT',
                      showWeightButtons: true,
                      showAgeButtons: false,
                    ),
                    onPress: () {
                      /// do nothing
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: BMICardView(
                    cardColor: palette.cardHue,
                    cardChild: WeightAndAge(
                      toggleWeightSizeBox: false,
                      toggleAgeSizeBox: true,
                      showWeight: false,
                      showAge: true,
                      subText: 'AGE',
                      showWeightButtons: false,
                      showAgeButtons: true,
                    ),
                    onPress: () {},
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            child: Container(
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              margin: EdgeInsets.only(top: 8),
              color: palette.sliderAccent,
              width: double.infinity,
              height: 80,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/results');
            },
          ),
        ],
      ),
    );
  }
}
