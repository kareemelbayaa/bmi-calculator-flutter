import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'file:///C:/Users/skies/AndroidStudioProjects/flutter_projects/bmi-calculator-flutter/lib/components/custom_widgets.dart';

import '../constants.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;

  ResultPage({this.bmiResult, this.resultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Result',
          style: kAppBarTitleStyle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBmiTextStyle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
