import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 200, 0, 0),
            child: Center(
              child: Text("Parabens, Você manja muito menor",
                  style: TextStyle(
                    fontSize: 20,
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Image.asset(
              "assets/images/dance.gif",
              height: 300,
              width: 300,
            ),
          ),
        ],
      ),
    );
  }
}
