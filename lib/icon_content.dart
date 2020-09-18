import 'package:flutter/material.dart';

const iconSize = 80.0;
const gapSize = 15.0;
const labelTextStyle = TextStyle(
  fontSize: 18,
  color: Color(0xFF9A9BA4),
);

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
          style: labelTextStyle,
        ),
      ],
    );
  }
}
