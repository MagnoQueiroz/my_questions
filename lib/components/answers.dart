import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String text;
  
//quandoSelecionado
  final void Function() answerSelect;

  Answers(this.text, this.answerSelect);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
          child: Text(text, textAlign: TextAlign.center),
          onPressed: answerSelect,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              textStyle: TextStyle(color: Colors.white, fontFamily: "Helvetica", fontSize: 20))
            ),
    );
  }
}
