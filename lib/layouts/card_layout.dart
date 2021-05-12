import 'package:flutter/material.dart';

class BMICardView extends StatelessWidget {
  BMICardView(this._cardColor, this.cardChild);
  final Color _cardColor;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: _cardColor,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
