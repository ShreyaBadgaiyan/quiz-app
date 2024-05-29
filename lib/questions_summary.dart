import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final  List<Map<String,Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.min,

      children: summaryData.map((data){
        return Row(children: [
          Text(data['question_index'].toString()),
          Expanded(
            //expanded is used to resolve renderflex error,the column only expands such that it fills up the space provided by row

            child: Column(
              children: [
                Text(data['question'].toString()),
                SizedBox(height: 5,),
                Text(data['correct_answer'].toString()),
                SizedBox(height: 5,),
                Text(data['chosen_answer'].toString())

              ],
            ),
          )
        ],);
    }).toList()
    );
  }
}
