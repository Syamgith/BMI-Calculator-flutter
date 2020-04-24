import 'package:flutter/material.dart';

const inactiveCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    child: Reusablecard(colour: inactiveCardColor),
                  ),
                  Expanded(
                    child: Reusablecard(colour: inactiveCardColor),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Reusablecard(colour: inactiveCardColor),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Reusablecard(colour: inactiveCardColor),
                  ),
                  Expanded(
                    child: Reusablecard(colour: inactiveCardColor),
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

class Reusablecard extends StatelessWidget {
  Reusablecard({@required this.colour});
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}
