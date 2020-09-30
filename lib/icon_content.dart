import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

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
