import 'package:flutter/material.dart';
import 'package:bmi_calculator/theme/custom_theme.dart';

class GenderCardContent extends StatelessWidget {
  GenderCardContent(this.faIcon, this.subText);
  final String subText;
  final IconData faIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          faIcon,
          size: 80,
          color: palette.primaryTextColor,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          subText,
          style: TextStyle(
            fontSize: 18,
            color: palette.primaryTextColor,
          ),
        ),
      ],
    );
  }
}
