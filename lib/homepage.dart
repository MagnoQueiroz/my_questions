import 'package:flutter/material.dart';
import 'package:my_questions/answers.dart';
import 'package:my_questions/images.dart';
import 'package:my_questions/questions.dart';
import 'package:my_questions/test.dart';

// usado para controlar o estado do componente stateful, tudo oq for ser alterado e controlado deverá ficar aqui
// aparentemente de acordo com esse boco do curso oq é atualizado é só oq precisa ser alterado novamente
class _HomeQuestionsState extends State<HomeQuestions> {
  var _selectQuestion = 0;

  void _answer() {
    setState(() {
      _selectQuestion++;
    });
  }

  final _questions = const [
    {
      "Imagem": "assets/images/azul-caneta.webp",
      "Texto": "Quem é esse famoso homem?",
      "Resposta": ["Bluepen", "João Gomes", "Patrick Bateman", "Redpen"],
    },
    {
      "Texto": "pergunta 2",
      "Resposta": ["ei", "2", "3", "4"],
    },
    {
      "Texto": "pergunta 3",
      "Resposta": ["ai", "2", "3", "4"],
    },
  ];

  bool get answerSelected {
    return _selectQuestion < _questions.length;
  }

  // contexto responsável por dar contexto aos widgets => localizar e quando tiver uma alteração atualizar o contexto dele(um localizador que é usado para rastrear cada widget em uma árvore e localizá-los e sua posição na árvore) ou seja o buildContext é responsável por contecta-los para se comunicar
  @override
  Widget build(BuildContext context) {
    List<String> answers = answerSelected ? _questions[_selectQuestion].cast()["Resposta"] : [];
 

    List<Widget> widgets = answers.map((text) => Answers(text, _answer)).toList();
    // for (String textAnsw in answers) {
    //   widgets.add(Answers(textAnsw, _answer));
    // }

    //Implementa a estrutura básica de layout visual do Material Design(Scaffold)
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Center(
          // ignore: prefer_const_constructors
          child: Text(
            "MY Questions",
            style: TextStyle(fontFamily: 'Helvetica'),
          ),
        ),
        backgroundColor: Color(0xFF9C27B0),
      ),
      body: answerSelected ? Column(
        children:[
          Images(_questions[_selectQuestion]["Imagem"].toString()),
          Questions(_questions[_selectQuestion]["Texto"].toString()),
          ...widgets,
        ],
      ) : Test(),
    );
  }
}

//conectar o componente stateful com com o estado
// nessa classe que tem  o metodo para criar o estado o createState
class HomeQuestions extends StatefulWidget {
  // que criará o estado a partir do do state no caso o (HomeQuestionsState)
  @override
  //poderá transformar um componente statelles em stateful
  _HomeQuestionsState createState() {
    return _HomeQuestionsState();
  }
}
