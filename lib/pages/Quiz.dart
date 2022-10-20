import 'package:flutter/material.dart';
import 'package:my_questions/components/answers.dart';
import 'package:my_questions/components/images.dart';
import 'package:my_questions/components/questions.dart';
import 'package:my_questions/pages/thanks.dart';

class _HomeQuestionsState extends State<Quiz> {
  var _selectQuestion = 0;

  void _answer() {
    setState(() {
      _selectQuestion++;
    });
  }

  final _questions = const [
    {
      "Imagem": "assets/images/html.png",
      "Title": 1,
      "Texto": "O que a sigla HTML quer dizer?",
      "Resposta": ["Hyper Text Markup Language", "Hyper Markdown Text Language ", "Hyper Texture Markup Language", "Hyper Text Module laguage"],
    },
    {
      "Imagem": "assets/images/flutter.png",
      "Title": 2,
      "Texto": "O flutter é?",
      "Resposta": ["Uma Linguagem de programação", "Um framework", "Uma biblioteca", "Um paradigma de programação"],
    },
    {
      "Imagem": "assets/images/git.png",
      "Title": 3,
      "Texto": "O que é git?",
      "Resposta": ["Um sistema de controle de versão", "Plataforma para Hospedar código", "Uma linguagem", "Um SDK"],
    },
  ];

  bool get answerSelected {
    return _selectQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> answers = answerSelected ? _questions[_selectQuestion].cast()["Resposta"] : [];

    List<Widget> widgets = answers.map((text) => Answers(text, _answer)).toList();

    return Scaffold(
      
      appBar: answerSelected ? AppBar(backgroundColor: Colors.purple ,
      
      title: Text(_questions[_selectQuestion]["Title"].toString())) : null,

      body: answerSelected
          ? Column(
              children: [
                Images(_questions[_selectQuestion]["Imagem"].toString()),
                Questions(_questions[_selectQuestion]["Texto"].toString()),
                ...widgets,
              ],
            )
          : Thanks(),
    );
  }
}


class Quiz extends StatefulWidget {
  @override
  _HomeQuestionsState createState() {
    return _HomeQuestionsState();
  }
}
