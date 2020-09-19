import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

const iconSize = 80.0;
const gapSize = 15.0;

class IconCard extends StatelessWidget {
  const IconCard({this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: gapSize,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
