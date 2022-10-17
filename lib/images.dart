import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  final dynamic image;
  Images(this.image);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 250.0,
      child: ClipRRect(child: Image.asset(image), borderRadius: BorderRadius.all(Radius.circular(30))),
    );
  }
}
