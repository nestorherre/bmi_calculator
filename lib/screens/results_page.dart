import 'package:bmi_calculator/calculator_controller.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/custom_widgets/large_button.dart';
import 'package:bmi_calculator/custom_widgets/reusable_card.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.result,
      @required this.value,
      @required this.interpretation});
  String result;
  String value;
  String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Result',
          style: kTextStyleBold,
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
              child: ReusableCard(
                cardColor: kActiveCardColor,
                gestureFunction: () {},
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      result,
                      style: kTextStyleResultTitle,
                    ),
                    Text(
                      value,
                      style: kTextStyleResultBold,
                    ),
                    Text(
                      interpretation,
                      style: kTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          LargeButton(
              buttonHeight: kBottomContainerHeight,
              buttonText: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
