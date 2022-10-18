import 'package:flutter/material.dart';
import 'package:my_questions/src/answers.dart';
import 'package:my_questions/src/images.dart';
import 'package:my_questions/src/questions.dart';
import 'package:my_questions/src/thanks.dart';

// usado para controlar o estado do componente stateful, tudo oq for ser alterado e controlado deverá ficar aqui
// aparentemente de acordo com esse boco do curso oq é atualizado é só oq precisa ser alterado novamente
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
      "Texto": "O que a sigla HTML quer dizer?",
      "Resposta": ["Hyper Text Markup Language", "Hyper Markdown Text Language ", "Hyper Texture Markup Language", "Hyper Text Module laguage"],
    },
    {
      "Imagem": "assets/images/flutter.png",
      "Texto": "O flutter é?",
      "Resposta": ["Uma Linguagem de programação", "Um framework", "Uma biblioteca", "Um paradigma de programação"],
    },
    {
      "Imagem": "assets/images/git.png",
      "Texto": "O que é git?",
      "Resposta": ["Um sistema de controle de versão", "Plataforma para Hospedar código", "Uma linguagem", "Um SDK"],
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

//conectar o componente stateful com com o estado
// nessa classe que tem  o metodo para criar o estado o createState
class Quiz extends StatefulWidget {
  // que criará o estado a partir do do state no caso o (HomeQuestionsState)
  @override
  //poderá transformar um componente statelles em stateful
  _HomeQuestionsState createState() {
    return _HomeQuestionsState();
  }
}
