import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;

const bottomContainerColor = Color(0xFFEB1555);
const inactiveCardColor = Color(0xFF111428);
const activeCardColor = Color(0xFF1D1F33);

enum Gender {
  male,
  female
}

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF060817),
          scaffoldBackgroundColor: Color(0xFF0A0D22)),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  var maleCardColor = inactiveCardColor;
  var femaleCardColor = inactiveCardColor;

  Gender currentGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                        colour: currentGender == Gender.male ? activeCardColor : inactiveCardColor,
                        cardChild: IconCard(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        )),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colour: currentGender == Gender.female ? activeCardColor : inactiveCardColor,
                      cardChild: IconCard(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            width: double.infinity,
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top: 10),
          )
        ],
      ),
    );
  }
}



