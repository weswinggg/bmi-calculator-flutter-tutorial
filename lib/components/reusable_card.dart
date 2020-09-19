import 'package:flutter/material.dart';

const cardMargin = 10.0;
const cardBorderRadius = 10.0;

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(cardMargin),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(cardBorderRadius),
        ),
        child: cardChild,
      ),
    );
  }
}
