import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary.dart';

import 'data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String,Object>> getSummaryData(){
    //Map are data structure having key-value pairs
    //Object allows all kind of values

    final List<Map<String,Object>> summary=[];

    for(var i=0;i<chosenAnswers.length;i++){
      //loop body
      summary.add({
        'question_index':i+1,
        'question':questions[i].text,
        'correct_answer':questions[i].answers[0],
        'chosen_answer':chosenAnswers[i],
      });
      //{} is dart syntax for creating a map
    }

    return summary;


  }
  @override
  Widget build(BuildContext context) {
    final summaryData=getSummaryData();
    final numTotalQuestions=questions.length;
    final numCorrectQuestions=summaryData.where((data){

      return ('chosen_answer'=='correct_answer');
      //return true
    }).length;
    //where returns new list and used for testing or comparisons
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child:  Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text('You have answered $numCorrectQuestions out of $numTotalQuestions correctly'),

             const SizedBox(height: 30,),
             SingleChildScrollView(
               child:SizedBox(
                 height: 400,
                   child:QuestionsSummary(summaryData: summaryData)
               )


            ),
            TextButton(onPressed: (){}, child: const Text('Restart Quiz'))

          ],
        ),
      ),
    );
  }
}
