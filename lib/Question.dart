import 'package:flutter/material.dart';

class Question extends StatelessWidget
{
  final String questionText;                //final means once we initialise the value it cnnot be changed
  Question(this.questionText);
  @override
  Widget build(BuildContext context)
  {
    return Container(
  

    width:double.infinity,
    margin:EdgeInsets.all(10),
    child:
    Text
    (questionText,
    style:TextStyle(fontSize:28),
    textAlign:TextAlign.center,
    )
    ,);/*appyling withoit container doesnnot allign the text in center
                                                                                       because text widget only provides the necessary space for content not all*/

  }                                                                                     /*container widget helps us to control the layout around 
                                                                                        its child (here it is text widget)*/
                                                                                        
                                                                                        /*double.infinity allotes all maximum available space to child */
                                                                                        //EdgeInsets.all(10) sets margin upto 10 unit in all direction

}