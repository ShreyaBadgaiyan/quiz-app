import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/quiz_questions.dart';
import 'package:quiz_app/option_button.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key});


 @override
  State <QuestionsScreen> createState() {
   return _QuestionScreenState();
 }
}

class _QuestionScreenState extends State<QuestionsScreen>{
var currentQuestion=questions[0];

// var num=0;
//   var currentQuestion=questions[num];
//   void nextQuestion(){
//     setState(() {
//       num++;
//     });
//
//
//
//   }

  @override

  @override
  Widget build(context){

    return  SizedBox(
      width: double.infinity,
      //be as wide as possible

      child: Container(

        margin: EdgeInsets.all(50),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          //centers vertically
          crossAxisAlignment: CrossAxisAlignment.stretch,
          //stretch to be as wide as possible
          children: [
             Text(currentQuestion.text,style: const TextStyle(
              color: Colors.white
            ),
             textAlign: TextAlign.center,),
            const SizedBox(height: 30,),
            //children only wants widget in children and not nested list
            //... helps to take all values in a list and place them as comma separated values
            ...currentQuestion.answers.map(
              //map allows you to convert value in list to other values
                (answer){
                  return OptionButton(answerText: answer, onTap: (){});
                }
            ),
            // OptionButton(answerText: currentQuestion.answers[0], onTap: (){}),
            // OptionButton(answerText:currentQuestion.answers[1] , onTap: (){}),
            // OptionButton(answerText:currentQuestion.answers[2] , onTap: (){}),
            // OptionButton(answerText: currentQuestion.answers[3], onTap: (){}),


            // FloatingActionButton(
            //     onPressed: (){},
            //   child: Icon(Icons.navigate_next),
            // )
          ],


        ),
      ),
    );
  }
}