import 'package:flutter/material.dart';

const cardMargin = 15.0;
const cardBorderRadius = 10.0;

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(cardMargin),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(cardBorderRadius),
      ),
      child: cardChild,
    );
  }
}
