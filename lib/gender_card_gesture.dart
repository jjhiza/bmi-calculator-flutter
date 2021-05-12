import 'input_page.dart';
import 'theme/custom_theme.dart';
import 'package:flutter/material.dart';

class GenderDetector {
  Color inactiveCardColor = palette.cardHue;
  Color activeCardColor = palette.selectedCardHue;
  Color maleCardColor;
  Color femaleCardColor;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
      } else {
        maleCardColor = inactiveCardColor;
        femaleCardColor = inactiveCardColor;
      }
      if (gender == 2) {
        if (femaleCardColor == inactiveCardColor) {
          femaleCardColor = activeCardColor;
        } else {
          femaleCardColor = inactiveCardColor;
          maleCardColor = inactiveCardColor;
        }
      }
    }
  }
}
