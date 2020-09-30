import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const _accentColor = Color(0xFFEB1555);
const _bottomContainerHeight = 80.0;
const _activeCardColor = Color(0xFF1D1E33);
const _inactiveCardColor = Color(0xFF111328);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

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
                  child: ReusableCard(
                      color: selectedGender == Gender.male
                          ? _activeCardColor
                          : _inactiveCardColor,
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
                        ? _activeCardColor
                        : _inactiveCardColor,
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
                  child: ReusableCard(color: _activeCardColor),
                )
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: _activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(color: _activeCardColor),
                )
              ],
            )),
            Container(
              color: _accentColor,
              margin: EdgeInsets.only(top: 10),
              height: _bottomContainerHeight,
              width: double.infinity,
              child: FlatButton(
                  onPressed: () {}, child: Text('Calculate your BMI')),
            )
          ],
        ));
  }
}
