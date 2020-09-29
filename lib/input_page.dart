import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
const _bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReusableCard(color: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ReusableCard(color: Color(0xFF1D1E33),),
                )
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: Color(0xFF1D1E33),),
                )
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: Color(0xFF1D1E33),),
                ),
                Expanded(
                  child: ReusableCard(color: Color(0xFF1D1E33),),
                )
              ],
            )),
            Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10),
              height: _bottomContainerHeight,
              width: double.infinity,
              child: FlatButton(onPressed: (){}, child: Text('Calculate your BMI')),
            )
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;

  ReusableCard({@required this.color});
  @override
  Widget build(BuildContext context) {
    //color property to change it later on

    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10)),
    );
  }
}
