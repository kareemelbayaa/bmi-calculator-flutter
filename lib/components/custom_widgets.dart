import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants.dart';

class RoundButton extends StatelessWidget {
  final IconData iconData;
  final Function onPressed;

  RoundButton({@required this.iconData, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: kAccentColor500,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(height: 36.0, width: 56.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      onPressed: onPressed,
      child: Icon(iconData),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({
    this.onPress,
    @required this.color,
    this.cardChild,
  });

  @override
  Widget build(BuildContext context) {
    //color property to change it later on

    return GestureDetector(
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
      ),
      onTap: onPress,
    );
  }
}

class BottomButton extends StatelessWidget {
  final Function onTab;
  final String title;

  const BottomButton({@required this.onTab, @required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTab,
        child: Container(
          child:
              Text(title, style: kCardTextStyle, textAlign: TextAlign.center),
        ));
  }
}

class IconContent extends StatelessWidget {
  final IconData _iconData;
  final String _genderLabel;

  IconContent(this._iconData, this._genderLabel);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          _iconData,
          size: 80,
        ),
        SizedBox(height: 15),
        Text(
          _genderLabel,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
