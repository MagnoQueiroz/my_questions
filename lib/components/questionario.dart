import 'package:flutter/widgets.dart';

import 'answers.dart';
import 'images.dart';
import 'questions.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int selectQuestion;
  final void Function(int) quandoAnswer;

  Questionario({
    required this.questions,
    required this.selectQuestion,
    required this.quandoAnswer,
  });

  // temPerguntaSelecionada
  bool get answerSelected {
    return selectQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    //list resposta
    List<Map<String, Object>> answers = answerSelected ? questions[selectQuestion].cast()["Resposta"] as List<Map<String, Object>> : [];
    return Column(
      children: [
        Images(questions[selectQuestion]["Imagem"].toString()),
        Questions(questions[selectQuestion]["Texto"].toString()),
        //o map transforma uma lista em outra lista com a msm quantidade de elementos transformando por exemplo widgets;
        // ...answers.map((ans) => Answers(ans["Resposta"] as String, quandoAnswer)).toList(),
        ...answers.map((ans) {
          return Answers(ans["texto"] as String, () => quandoAnswer(int.parse(ans["pontuacao"].toString())));
          
        }).toList(),
      ],
    );
  }
}
