import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  final dynamic image;
  Images(this.image);
  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: EdgeInsets.fromLTRB(0, 80, 0, 19),
      
      width: 200.0,
      child: ClipRRect(child: Image.asset(image), borderRadius: BorderRadius.all(Radius.circular(20))),
    );
  }
}
