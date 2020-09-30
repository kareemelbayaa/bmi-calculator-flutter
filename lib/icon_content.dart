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
          style: TextStyle(
              color: Color(0xFF8D8E98), fontSize: 18, fontFamily: 'Pacifico'),
        )
      ],
    );
  }
}