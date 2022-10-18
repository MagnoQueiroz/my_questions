import 'package:flutter/material.dart';
import 'package:my_questions/homepage.dart';

class Thanks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 140, 0, 0),
            child: const Center(
              child: Text(
                "Parabéns seus conhecimentos estão em dia!!",
                style: TextStyle(
                  fontSize: 28,
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
            padding: EdgeInsets.fromLTRB(0,0,0,20),
            child: ElevatedButton(
                child: Text("Voltar ao inicio"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    // ignore: prefer_const_constructors
                    textStyle: TextStyle(color: Colors.white, fontFamily: "Helvetica", fontSize: 40))),
          )
        ],),
      ),
    );
  }
}
