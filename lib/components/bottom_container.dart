import 'package:flutter/material.dart';

import '../constants.dart';

class BottomContainer extends StatelessWidget {
  BottomContainer({this.text, this.onTap});
  Function onTap;
  String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kBottomTextStyle,
          ),
        ),
        width: double.infinity,
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20),
      ),
    );
  }
}
