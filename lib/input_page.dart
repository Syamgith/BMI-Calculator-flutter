import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);
const bottomContainerHeight = 80.0;

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          maleCardColor = maleCardColor == inactiveCardColor
                              ? activeCardColor
                              : inactiveCardColor;
                          femaleCardColor = femaleCardColor == activeCardColor
                              ? inactiveCardColor
                              : inactiveCardColor;
                        });
                      },
                      child: Reusablecard(
                        colour: maleCardColor,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          femaleCardColor = femaleCardColor == inactiveCardColor
                              ? activeCardColor
                              : inactiveCardColor;
                          maleCardColor = maleCardColor == activeCardColor
                              ? inactiveCardColor
                              : inactiveCardColor;
                        });
                      },
                      child: Reusablecard(
                        colour: femaleCardColor,
                        cardChild: IconContent(
                            icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Reusablecard(colour: activeCardColor),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Reusablecard(colour: activeCardColor),
                  ),
                  Expanded(
                    child: Reusablecard(colour: activeCardColor),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: bottomContainerColor,
              height: bottomContainerHeight,
              margin: EdgeInsets.only(top: 10.0),
            ),
          ],
        ));
  }
}
