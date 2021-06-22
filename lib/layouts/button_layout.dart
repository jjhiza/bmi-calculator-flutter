import 'package:flutter/material.dart';
import 'package:bmi_calculator/theme/custom_theme.dart';

class CustButton extends StatelessWidget {
  CustButton({@required this.icon, this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: palette.primaryTextColor,
      ),
      shape: CircleBorder(),
      fillColor: palette.incrementButtonColor,
      constraints: BoxConstraints(
        minHeight: 56,
        minWidth: 56,
      ),
      elevation: 3,
      onPressed: onPressed,
    );
  }
}
