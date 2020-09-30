import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'constants.dart';

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
