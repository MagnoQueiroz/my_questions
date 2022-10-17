import 'package:flutter/material.dart';

class Questions extends StatelessWidget {

  final String text;
  Questions(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      // valor maximo do double
      width: double.infinity,
      //ele n centralizou o texto pq msm com o center ele ainda ocupa 100%(msm tamanho do q esta sendo exposto na tela e ira aumentar de acordo com o conteudo) da tela logo ele ja estava "centralizado", para isso envolvemos ele em um container e definimos um width e uma margin 
      child: Text(
        text,
        style: TextStyle(fontSize: 20),
        textAlign: 
        TextAlign.center,
      ),
    );
  }
}
