import 'package:flutter/material.dart';

const inactiveColor = Color(0xFF0A103B);
const activeColor = Color(0xFF272A4C);
enum Gender { male, female }

class Selection {
  Gender chosenGender;

  Selection({this.chosenGender});
}
