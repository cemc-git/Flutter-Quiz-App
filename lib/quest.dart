import 'package:flutter/material.dart';

class Quest extends StatelessWidget {
  String questValue;
  Quest(this.questValue);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questValue,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
