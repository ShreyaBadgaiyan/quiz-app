import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final String answerText;
  final void Function() onTap;
  const OptionButton({super.key, required this.answerText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
            onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
        backgroundColor: const Color.fromARGB(255, 14, 5, 94),
        foregroundColor: Colors.white,
          shape:  RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )
        ),


            child: Text(answerText),),
        SizedBox(height: 10,)
      ],
    );
  }
}