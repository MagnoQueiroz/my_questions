import 'package:flutter/material.dart';
import 'package:my_questions/pages/homepage.dart';

class Thanks extends StatelessWidget {
  final int punctuation;

  Thanks(this.punctuation);

  String get textResult {
    if (punctuation == 1 || punctuation < 2) {
      return "acertos: $punctuation\n precisa estudar mais ";
    } else if (punctuation < 4) {
      return "acertos: $punctuation\n Seus conhecimentos estão bons ";
    } else {
      return "acertos: $punctuation\n Parabéns seus conhecimentos estão em dia!! ";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 140, 0, 0),
              child: Center(
                child: Text(
                  textResult,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Image.asset(
                "assets/images/programmer.png",
                height: 300,
                width: 300,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 12),
              child: ElevatedButton(
                  child: Text("Voltar ao inicio"),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                      // ignore: prefer_const_constructors
                      textStyle: TextStyle(color: Colors.white, fontFamily: "Helvetica", fontSize: 40))),
            ),
          ],
        ),
      ),
    );
  }
}
