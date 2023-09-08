/*
1.Need to Add image and a button 
2.By pressing button it will goto questions_screen.dart
3.#.Need to enable the FilledButton.icon
*/





import 'package:flutter/material.dart';
//import 'quiz.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuis,{super.key});
  
  final void Function() startQuis;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              'images/a_dot_burr.png',
            ),
          ),
          const SizedBox(height: null),
          FilledButton.icon(
            onPressed: startQuis, //
            style: FilledButton.styleFrom(
              backgroundColor:
                  const Color.fromARGB(255, 4, 54, 69), // Background color
            ),
            label: const Text(
              'Start Quis',
              style: TextStyle(fontSize: 12),
            ),
            icon: const Icon(Icons.arrow_forward_ios),
          )
        ],
      ),
    );
  }
}

/*
1.Not able to get the image 

*/