import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{

   const StartScreen(this.startQuiz,{super.key});


  final void Function() startQuiz;

  @override

  Widget build(context){

    return  Center(
      child: Column(

         mainAxisSize: MainAxisSize.min,
          children: [
           const Image(image: AssetImage('assets/images/quiz-logo.png',

           ),
           width: 300,
           color: Color.fromARGB(150, 255, 255, 255)),

            const SizedBox(height: 20,),

            const Text('Learn Flutter the fun way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30
            ),),

            const SizedBox(height: 20,),

            OutlinedButton.icon
              (
              onPressed:(){

                startQuiz();
              },
              label: const Text('Start Quiz',),
                icon: const Icon(Icons.arrow_right),

              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              )

            )

          ],

      ),
    );
  }
}