
/*
1.When App start main.dart direct the quiz.dart 
2.the quiz.dart will display the BackGround color
3.And then it will direct to start_screen.dart 
4.(008 )  widget activescreen default it will start_screen.dart. 
    Once, butten activated then activescreen = questions_screen.dart 
*/








import 'package:flutter/material.dart';
import 'package:quiz0/question.dart';
import 'questions_screen.dart';
import 'start_screen.dart';
import 'result_screen.dart';

class Quis extends StatefulWidget {
  const Quis({super.key});

  @override
  State<Quis> createState() => _QuisState();
}

class _QuisState extends State<Quis> {
  List<String> selectedAnswer = [];
  var activeScreen = "start-screen";
  
  void switchScreen(){  // swithchScreen is function, if need to call then us call as pointer || swithcScreen?(not)
    setState(() {
      activeScreen = "question-screen";
    });  
  } 

  void chooseAnswer(String answer){
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length){
      setState(() {
        activeScreen ="result-screen";
        //selectedAnswer = [];

      });
    }
  }
  @override
  Widget build(BuildContext context) {
    Widget screenwidget = StartScreen(switchScreen);

    if (activeScreen == "question-screen"){
      screenwidget = QuestionsScreen(optans: chooseAnswer,);
    }
    if (activeScreen == "result-screen"){
      screenwidget =  ResultScreen(chosenAnswer: selectedAnswer);
    }
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft, 
          end: Alignment.bottomRight, 
          colors: [
            Color.fromARGB(255, 4, 86, 154),
            Color.fromRGBO(255, 4, 86, 154),
          ],
        ),
      ), 
      child:screenwidget,
    );
  }
}

/*
1.Need to learn about the initscreen
2.How the switch screen works 
*/