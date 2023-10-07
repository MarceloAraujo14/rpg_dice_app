import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceImage = 'assets/images/d20_20.png';

  void rollDice() {
    setState(() {
      var diceNumber = Random().nextInt(20);
      diceImage = 'assets/images/d20_$diceNumber.png';
      print(diceImage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          diceImage,
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
