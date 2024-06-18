import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[100],
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.pink[100],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 6;

  void updateDice(){
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                  updateDice();
                // print('Left button');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                  updateDice();
                // print('Right button');
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}


// class DicePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: [
//           Expanded(
//             child: TextButton(
//               onPressed: () {
//                 print('Left button');
//               },
//               child: Image.asset('images/dice1.png'),
//             ),
//           ),
//           Expanded(
//             child: TextButton(
//               onPressed: () {
//                 print('Right button');
//               },
//               child: Image.asset('images/dice2.png'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
