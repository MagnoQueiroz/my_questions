import 'package:flutter/material.dart';
import 'package:my_questions/Quiz.dart';

class Hompage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Center(
          // ignore: prefer_const_constructors
          child: Text(
            "MY Questions - Versão celebs",
            style: TextStyle(fontFamily: 'Helvetica'),
          ),
        ),
        backgroundColor: Color(0xFF9C27B0),
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            width: double.infinity,
            child: Text(
              "Bem Vindo",
              style: TextStyle(fontFamily: 'Helvetica', fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )),
        Container(
          margin: EdgeInsets.all(20),
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Quiz()),
                );
              },
              child: Text("iniciar"),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  backgroundColor: Colors.purple,
                  // ignore: prefer_const_constructors
                  textStyle: TextStyle(color: Colors.white, fontFamily: "Helvetica", fontSize: 40))),
        ),
      ]),
    );
  }
}
