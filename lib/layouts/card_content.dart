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

class SliderBox extends StatefulWidget {
  SliderBox(this.subText);

  final String subText;

  @override
  _SliderBoxState createState() => _SliderBoxState();
}

class _SliderBoxState extends State<SliderBox> {
  int _height = 180;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.subText,
          style: TextStyle(
            fontSize: 18,
            color: palette.primaryTextColor,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              _height.toString(),
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              'cm',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            thumbColor: palette.sliderAccent,
            activeTrackColor: palette.primaryTextColor,
            inactiveTrackColor: palette.inactiveSlider,
            thumbShape: RoundSliderThumbShape(
              enabledThumbRadius: 12,
            ),
            overlayShape: RoundSliderOverlayShape(
              overlayRadius: 24,
            ),
            overlayColor: palette.sliderOverlay,
          ),
          child: Slider(
              value: _height.toDouble(),
              min: 120.0,
              max: 240.0,
              onChanged: (double newValue) {
                setState(() {
                  _height = newValue.round();
                });
              }),
        ),
      ],
    );
  }
}
