import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
    const AnswerButton({super.key,required this.onTap, required this.answerText});
  
  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
            onPressed: onTap,
            style: FilledButton.styleFrom(
              backgroundColor:
                  const Color.fromARGB(255, 59, 198, 240), // Background color
            ),
            label:  Text(answerText,
              style: const TextStyle(fontSize: 20), textAlign: TextAlign.center   ,
            ),
            icon: const Icon(Icons.question_answer_rounded),
          );
  }
}