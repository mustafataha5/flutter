import 'package:flutter/material.dart';
import 'dart:math';

final randmoizer = Random() ; 
class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});
  @override
  State<DiceRoll> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoll> {
  var rollImage = 'assets/img/dice-images/dice-4.png';
  var rand = 1;

  void roll() {
    setState(() {
      rand = randmoizer.nextInt(6) + 1;
    });
    //print(">>>>>> Image has been chnaged");
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/img/dice-images/dice-$rand.png',
          width: 200,
        ),
        const SizedBox(
          height: 40,
        ),
        ElevatedButton(
            onPressed: roll,
            style: TextButton.styleFrom(
                foregroundColor: Colors.blue,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text("Roll"))
      ],
    );
  }
}
