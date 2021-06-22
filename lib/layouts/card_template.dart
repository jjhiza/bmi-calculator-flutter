import 'package:flutter/material.dart';

class BMICardView extends StatelessWidget {
  BMICardView({@required this.onPress, this.cardColor, this.cardChild});

  final Color cardColor;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
