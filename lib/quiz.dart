import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override

  State<Quiz> createState(){
    return _QuizState();
  }

}

class _QuizState extends State<Quiz>{

 var activeScreen='start-screen';
  //widget type is used to use any type of widget

  @override

  //initState executes ones after the object has been created.

  // void initState() {
  //   // TODO: implement initState
  //   activeScreen=StartScreen(switchScreen);
  //   super.initState();
  // }
  void switchScreen(){
    setState(() {
     // activeScreen=const QuestionsScreen();
      activeScreen='question-screen';
    });
  }
  @override
  Widget build(BuildContext context) {
    // final screenWidget=activeScreen=='start-screen'
    //     ?StartScreen(switchScreen)
    //     :const QuestionsScreen();

    Widget screenWidget=StartScreen(switchScreen);
    if(activeScreen=='question-screen') {
      screenWidget= QuestionsScreen();
    }
    //curly braces not required


    return    MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 78, 13, 151),
                      Color.fromARGB(255, 107, 15, 168),

                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight

                )
            ),
            child: screenWidget),
      ),
    );
  }
}

//we can use ternary operations also for switching between screens.