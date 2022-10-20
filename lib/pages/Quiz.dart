import 'package:flutter/material.dart';
import 'package:my_questions/components/answers.dart';
import 'package:my_questions/components/images.dart';
import 'package:my_questions/components/questionario.dart';
import 'package:my_questions/components/questions.dart';
import 'package:my_questions/pages/thanks.dart';

class _HomeQuestionsState extends State<Quiz> {
  //perguntasSelecionadas
  var _selectQuestion = 0;
  var _pontuacaoTotal = 0;
//responder
  void _answer(int pontuacao) {
    //evitar mudança de estado desnecessária
    if (answerSelected) {
      setState(() {
        _selectQuestion++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  bool get answerSelected {
    return _selectQuestion < _questions.length;
  }

//perguntas
  final List<Map<String, Object>> _questions = const [
    {
      "Imagem": "assets/images/html.png",
      "Title": "Questão 1",
      "Texto": "O que a sigla HTML quer dizer?",
      "Resposta": [
        {"texto": "Hyper Text Markup Language", "pontuacao": 1},
        {"texto": "Hyper Markdown Text Language", "pontuacao": 0},
        {"texto": "Hyper Texture Markup Language", "pontuacao": 0},
        {"texto": "Hyper Text Module language", "pontuacao": 0},
      ],
    },
    {
      "Imagem": "assets/images/flutter.png",
      "Title": "Questão 2",
      "Texto": "O flutter é?",
      "Resposta": [
        {
          "texto": "Uma Linguagem de programação",
          "pontuacao": 0,
        },
        {
          "texto": "Um framework",
          "pontuacao": 1,
        },
        {
          "texto": "Uma biblioteca",
          "pontuacao": 0,
        },
        {
          "texto": "Um paradigma de programação",
          "pontuacao": 0,
        },
      ],
    },
    {
      "Imagem": "assets/images/git.png",
      "Title": "Questão 3",
      "Texto": "O que é git?",
      "Resposta": [
        {
          "texto": "Plataforma para Hospedar código",
          "pontuacao": 0,
        },
        {
          "texto": "Uma linguagem",
          "pontuacao": 0,
        },
        {
          "texto": "Um sistema de controle de versão",
          "pontuacao": 1,
        },
        {
          "texto": "Um SDK",
          "pontuacao": 0,
        },
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    // List<Widget> widgets = ;

    return Scaffold(
      appBar: answerSelected ? AppBar(backgroundColor: Colors.purple, title: Center(child: Text(_questions[_selectQuestion]["Title"].toString()))) : null,
      body: answerSelected
          ? Questionario(
              questions: _questions,
              selectQuestion: _selectQuestion,
              quandoAnswer: _answer,
            )
          : Thanks(_pontuacaoTotal),
    );
  }
}

class Quiz extends StatefulWidget {
  @override
  _HomeQuestionsState createState() {
    return _HomeQuestionsState();
  }
}
