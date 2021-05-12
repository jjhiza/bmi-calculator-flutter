import 'package:flutter/material.dart';

class BMICardView extends StatelessWidget {
  BMICardView(this._cardColor);
  final Color _cardColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: _cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  // Color get cardColor => _cardColor;
}
