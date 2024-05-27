import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  const StartScreen({super.key});
  @override

  Widget build(context){

    return const Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
         Image(image: AssetImage('assets/images/quiz-logo.png')),

          SizedBox(height: 10,),

          Text('Do your best and win'),

          SizedBox(height: 10,),

          FloatingActionButton
            (
            onPressed: () {};
            child: Text('Start'),
          )

        ],
      ),
    );
  }
}