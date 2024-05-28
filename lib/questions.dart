import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key});


 @override
  State <QuestionsScreen> createState() {
   return _QuestionScreenState();
 }
}

class _QuestionScreenState extends State<QuestionsScreen>{

  @override
  Widget build(context){
    return  SizedBox(
      width: double.infinity,
      //be as wide as possible

      child: Column(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        //centers vertically
        children: [
          const Text('Question 1'),
          const SizedBox(height: 30,),
          ElevatedButton(
              onPressed: (){},
              child: const Text('1')),

        const SizedBox(height: 30,),
        ElevatedButton(
            onPressed: (){},
            child: const Text('1')),

        const SizedBox(height: 30,),
        ElevatedButton(
            onPressed: (){},
            child: const Text('1'))
        ,
        const SizedBox(height: 30,),
        ElevatedButton(
            onPressed: (){},
            child: const Text('1'))
        ],
      ),
    );
  }
}