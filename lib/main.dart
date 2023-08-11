import 'Quiz.dart';
import 'result.dart';
import 'package:flutter/material.dart'; //import is a keyword by which we included flutter package's material.dart file


void main() /*runApp is a function from main.dart file which has the argument MyApp which is object/widget
                                         of class created by us MyApp  */
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState()
  {
    return MyAppState();
  }

}
class MyAppState extends State<MyApp> {
      final  _questions=const[                                  // const is a compiletime constant means questions variable cant be overriden and object value cant be changed 
      {
        'questionText':'What is your favourite color?',
        'answers':[
          {'text': 'Black','score': 10},
          {'text': 'Red','score': 5},
          {'text': 'Green','score': 3},
          {'text':'White','score':1},
        ],
      },

      {
        'questionText':'What is your favourite animal?',
        'answers':
        [
          {'text':'Rabbit','score': 3},
          {'text':'Rhyno', 'score': 11},
          {'text':'Tiger', 'score': 5},
          {'text':'Lion', 'score': 9},
          ],
      },

      {
        'questionText':'What is your favourite instructor?',
        'answers':
        [
          {'text':'Max','score':1},
          {'text':'Rex', 'score':1},
          {'text':'Drax', 'score':1},
          {'text':'Fax', 'score':1},
          
          ],
      }

    ];/*questions is a list defined by by us withi indexing*/
  var _questionIndex=0;
  var _totalScore=0; /*question index is a proprty / data member of class holds the index of list questions that we had created */ 
  

  void _resetQuiz(){

     setState(() {
    _questionIndex=0;
    _totalScore=0;
       
     });
   

  }
  void _answerQuestion(int score,String answerText) {
    _totalScore+=score;
    setState(() {
      _questionIndex=_questionIndex+1;
      
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length)
    {
      print("We have more questions!");
    }
 
  }
  /*extends is a keyword for inheriting another class and extending it here StatelessWidget class
                                           is inherited from material.dart file*/

  Widget build( BuildContext context)
           /*build is a function which has a return type widget , argument context which is the object
                                         of BuildContext class of material.dart */
  {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QuizInsight'),  
        ),
        body: _questionIndex<_questions.length? 
        Quiz(answerQuestion:_answerQuestion,
        questions:_questions,
        questionIndex: _questionIndex,
        )
        : Result(_totalScore,_resetQuiz),
      ),
    ); /**MaterialApp is a constructor here it is a parameterised constructor in 
                                               which named arguments must be use,here home is name of argument and argument is functon
                                               or widget Text also available in material.dartwhich has argument hello here. */
  }
}
