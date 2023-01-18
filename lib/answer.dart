import 'dart:ui';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String answerValue;
  Function ans;
  Answer(this.answerValue, this.ans);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.all(12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber,
          foregroundColor: Colors.black,
        ),
        child: Text(
          answerValue,
        ),
        onPressed: ans,
      ),
    );
  }
}
