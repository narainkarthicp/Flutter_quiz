import 'package:flutter/material.dart';
//import 'package:quiz0/start_screen.dart';
import 'quiz.dart';

void main() {
  runApp(const InitialScreen());
}

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Quis(),
      ),
    );
  }
}
