import 'package:flutter/material.dart';

class BMICardView extends StatelessWidget {
  BMICardView(this._cardColor);
  final Color _cardColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: _cardColor,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
