import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  final int resultScore;
  final VoidCallback resetHandler;


  Result(this.resultScore,this.resetHandler);

  String get resultPhrase{
    String resultText='You did it!';
    if(resultScore<=8){
      resultText='You are awesome and innocent!';
    }
    else if(resultScore<=12){
      resultText='You are ....strange!';
      
    }
    else if(resultScore<=16){
      resultText='You are evil!';
    }
    return resultText;

  }
  Widget build(BuildContext context)
  {
    return Center(
      child:Column(
        children: <Widget> [
          Text(
            resultPhrase,
            style: TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text(
              'Restart Quiz!'),
              style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.blue)),
          onPressed: resetHandler ),
        ],
      ),                           
      );
    
    
  }
}