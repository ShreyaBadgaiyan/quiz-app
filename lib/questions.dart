import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/quiz_questions.dart';
import 'package:quiz_app/option_button.dart';

class QuestionsScreen extends StatefulWidget{

  final void Function(String answer) onSelectAnswer;

  const QuestionsScreen({super.key, required this.onSelectAnswer});


 @override
  State <QuestionsScreen> createState() {
   return _QuestionScreenState();
 }
}

class _QuestionScreenState extends State<QuestionsScreen>{
  var currentQuestionIndex=0;

void answerQuestion(String selectedAnswer){
 // currentQuestionIndex=currentQuestionIndex+1;
//  currentQuestionIndex+=1;
//helps to call the method
  widget.onSelectAnswer(selectedAnswer);
setState(() {
  currentQuestionIndex++;


});
}
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
  Widget build(context){
    final currentQuestion=questions[currentQuestionIndex];


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
              Text(currentQuestion.text,style: GoogleFonts.lato(
                color:   Color.fromARGB(255, 201, 153, 251),

                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
          //  const TextStyle(
            //   color: Colors.white,
            // ),
             textAlign: TextAlign.center,),
            const SizedBox(height: 30,),
            //children only wants widget in children and not nested list
            //... helps to take all values in a list and place them as comma separated values
            ...currentQuestion.getShuffledAnswer().map(
              //map allows you to convert value in list to other values
              //shuffle method can be called on lists to give methods in shuffle type
              //shuffle changes the original list while map does not change the original list

                (answer){
                  return OptionButton(
                      answerText: answer,
                      onTap: (){
                    answerQuestion(answer);
                  });
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