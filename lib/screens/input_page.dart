import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/custom_widgets.dart';
import '../constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 80;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bmi Calculator', style: kAppBarTitleStyle),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      color: selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      cardChild: IconContent(FontAwesomeIcons.mars, 'Male')),
                ),
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardChild: IconContent(FontAwesomeIcons.venus, 'Female'),
                  ),
                )
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      children: [
                        Text(
                          'Height',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //TODO:you have to specify textBaseLine for this matter
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text(
                              height.toString(),
                              style: kLargeTextStyle,
                            ),
                            Text(
                              'cm',
                              style: kLabelTextStyle,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              activeTrackColor: kAccentColor500,
                              thumbColor: kAccentColor500,
                              inactiveTrackColor: kAccentColor200,
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 7.5),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 15.0),
                              overlayColor: kAccentOverLayColor),
                          child: Slider(
                            value: height.toDouble(),
                            min: 100.0,
                            max: 300.0,
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.round();
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kCardTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              iconData: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                  print(weight);
                                });
                              },
                            ),
                            SizedBox(width: 15.0),
                            RoundButton(
                              iconData: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kCardTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              iconData: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(width: 15.0),
                            RoundButton(
                              iconData: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            )),
            Container(
              color: kAccentColor500,
              height: kBottomContainerHeight,
              width: double.infinity,
              child: Center(
                child: BottomButton(
                  title: 'Calculate',
                  onTab: () {
                    CalculatorBrain calc =
                        CalculatorBrain(height: height, weight: weight);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultPage(
                            bmiResult: calc.calculateBmi(),
                            resultText: calc.getResult(),
                          ),
                        ));
                  },
                ),
              ),
            )
          ],
        ));
  }
}
