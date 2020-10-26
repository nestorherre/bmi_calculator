import 'package:flutter/material.dart';

import '../constants.dart';
import '../screens/results_page.dart';

class LargeButton extends StatelessWidget {
  LargeButton(
      {@required this.buttonHeight,
      this.buttonText = 'CALCULATE',
      @required this.onTap});
  final double buttonHeight;
  final String buttonText;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: buttonHeight,
        color: kBottomContainerColor,
        padding: EdgeInsets.only(bottom: 10.0),
        child: Center(
          child: Text(
            buttonText,
            style: kLargeButtonStyle,
          ),
        ),
      ),
    );
  }
}
