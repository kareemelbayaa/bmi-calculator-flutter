import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

var _accentColor = Color(0xFFEB1555);
var _bottomContainerHeight = 80.0;
var _activeCardColor = Color(0xFF1D1E33);
const _inactiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = _inactiveCardColor;
  Color femaleCardColor = _inactiveCardColor;

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
                    onTap: () { // classic anonymous callbacks
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableCard(
                        color: maleCardColor,
                        cardChild: IconContent(FontAwesomeIcons.mars, 'Male')),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusableCard(
                      color: femaleCardColor,
                      cardChild: IconContent(FontAwesomeIcons.venus, 'Female'),
                    ),
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
                  onPressed: () {

                  }, child: Text('Calculate your BMI')),
            )
          ],
        ));
  }
  void updateColor(int gender)
  {
    if(gender==1)
    {
      if(maleCardColor==_inactiveCardColor)
      {
        maleCardColor = _activeCardColor;
        femaleCardColor = _inactiveCardColor;
      }else
        {
          maleCardColor = _inactiveCardColor;
        }
    }else if(gender==2)
      {
        if(femaleCardColor==_inactiveCardColor)
        {
          femaleCardColor=_activeCardColor;
          maleCardColor = _inactiveCardColor;
        }else
          {
            femaleCardColor=_inactiveCardColor;
          }
      }
  }
}
