/*
1.This page is from the start_screen 
2.Here it will display the question 
3.#.
*/





 import 'package:flutter/material.dart';
import 'answer_button.dart';
import 'question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key,required this.optans});

  final void Function(String answer) optans; 
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var index = 0;

  void ansindex(String selectAnswer) {
    widget.optans(selectAnswer);
    setState(() {
      index += 1;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[index];

    return Container(
      margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //const Center(),
            const SizedBox(
              height: 200,
            ),
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                return AnswerButton(
                  answerText: answer,
                  onTap: (){
                    ansindex(answer);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
