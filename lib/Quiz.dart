

import 'package:flutter/material.dart';
import 'Question.dart';
import 'Answer.dart';

class Quiz extends StatelessWidget{

  final List<Map<String,Object>> questions;
  final int questionIndex;
  final  Function  answerQuestion;

  Quiz({required this.questions,
  required this.answerQuestion,
  required this.questionIndex});
  Widget build(BuildContext context)
  {

    return Column(                       //ternary expression one line statement,if true then column
          children: [
            Question(
                questions[questionIndex]['questionText'] as String,
                ),
                ...(questions[questionIndex]['answers'] as List<Map<String,Object>>)
                .map((answer){
                  return Answer(
                    () => answerQuestion(answer['score'] as int, answer['text'] as String),
                  answer['text'] as String,
                  
                  );

                }).toList()
                ,// Question is a constructor of question class imported by us
          
          ],
        );

  }

}

