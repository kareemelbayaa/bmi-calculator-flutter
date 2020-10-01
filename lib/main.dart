import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/input_page',
        routes: {
          '/input_page': (context) => InputPage(),
        },
        theme: ThemeData.dark().copyWith(
          textTheme: TextTheme(body1: TextStyle(color: Colors.white)),
          accentColor: Colors.purple,
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          primaryColor: Color(0xFF0A0E21),
        ));
  }
}
