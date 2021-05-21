import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'button_layout.dart';
import 'package:bmi_calculator/theme/custom_theme.dart';

class WeightAndAge extends StatefulWidget {
  WeightAndAge(
      {@required this.subText,
      this.toggleWeightSizeBox,
      this.showAgeButtons,
      this.showWeightButtons,
      this.toggleAgeSizeBox,
      this.showAge,
      this.showWeight,
      this.addIcon});

  final String subText;
  final IconData addIcon;
  final bool showWeight,
      showAge,
      toggleWeightSizeBox,
      toggleAgeSizeBox,
      showWeightButtons,
      showAgeButtons;

  @override
  _WeightAndAgeState createState() => _WeightAndAgeState();
}

class _WeightAndAgeState extends State<WeightAndAge> {
  int weight = 60;
  int age = 40;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Visibility(
          visible: widget.showWeight,
          child: Text(
            widget.subText,
            style: TextStyle(
              fontSize: 18,
              color: palette.primaryTextColor,
            ),
          ),
        ),
        Visibility(
          visible: widget.toggleWeightSizeBox,
          child: SizedBox(
            height: 15,
          ),
        ),
        Visibility(
          visible: widget.showWeight,
          child: Text(
            weight.toString(),
            style: TextStyle(
              fontSize: 55,
              fontWeight: FontWeight.w900,
              color: palette.primaryTextColor,
            ),
          ),
        ),
        Visibility(
          visible: widget.showAge,
          child: Text(
            widget.subText,
            style: TextStyle(
              fontSize: 18,
              color: palette.primaryTextColor,
            ),
          ),
        ),
        Visibility(
          visible: widget.toggleAgeSizeBox,
          child: SizedBox(
            height: 15,
          ),
        ),
        Visibility(
          visible: widget.showAge,
          child: Text(
            age.toString(),
            style: TextStyle(
              fontSize: 55,
              fontWeight: FontWeight.w900,
              color: palette.primaryTextColor,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// TODO - Weight buttons
            Visibility(
              visible: widget.showWeightButtons,
              child: Expanded(
                flex: 1,
                child: CustButton(
                  icon: FontAwesomeIcons.minus,
                  onPressed: () {
                    setState(() {
                      weight--;
                    });
                  },
                ),
              ),
            ),
            Visibility(
              visible: widget.showWeightButtons,
              child: Expanded(
                flex: 1,
                child: CustButton(
                  icon: FontAwesomeIcons.plus,
                  onPressed: () {
                    setState(() {
                      weight++;
                    });
                  },
                ),
              ),
            ),
            Visibility(
              visible: widget.showAgeButtons,
              child: Expanded(
                flex: 1,
                child: CustButton(
                  icon: FontAwesomeIcons.minus,
                  onPressed: () {
                    setState(() {
                      age--;
                    });
                  },
                ),
              ),
            ),
            Visibility(
              visible: widget.showAgeButtons,
              child: Expanded(
                flex: 1,
                child: CustButton(
                  icon: FontAwesomeIcons.plus,
                  onPressed: () {
                    setState(() {
                      age++;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
