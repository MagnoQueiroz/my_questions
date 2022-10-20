import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String text;
  

  final void Function() answerSelect;

  Answers(this.text, this.answerSelect);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
          child: Text(text),
          onPressed: answerSelect,
          style: ElevatedButton.styleFrom(
            primary: Colors.purple,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              // backgroundColor: Colors.purple,
              // ignore: prefer_const_constructors
              textStyle: TextStyle(color: Colors.white, fontFamily: "Helvetica", fontSize: 20))
            ),
    );
  }
}
