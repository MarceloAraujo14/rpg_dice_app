import 'dart:math';

import 'package:flutter/material.dart';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  
  var diceNumber = 1;

  void rollDice() {
    setState(() {
      diceNumber = 1 + random.nextInt(20);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        
        Image.asset(
          'assets/images/d20_$diceNumber.png',
          width: 250,
        ),
        const SizedBox(height: 50),

        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(100, 50),
              textStyle: const TextStyle(fontSize: 25)),
          child: const Text('Roll'),
        ),
      ],
    );
  }
}
