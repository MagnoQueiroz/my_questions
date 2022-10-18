import 'package:flutter/material.dart';

class Thanks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 200, 0, 0),
            child: Center(
              child: Text("Parabens seus conhecimentos estao em dia!!",
                  style: TextStyle(
                    fontSize: 28, fontWeight: FontWeight.w600,
                  ), textAlign: TextAlign.center,),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Image.asset(
              "assets/images/goku.png",
              height: 300,
              width: 300,
            ),
          ),
        ],
      ),
    );
  }
}
