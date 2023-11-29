import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  var currentDiceRolll = 2;
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      currentDiceRolll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 100,
        ),
        Image.asset(
          'assets/images/dice-$currentDiceRolll.png',
          width: 100,
        ),
        const SizedBox(
          width: 20,
          height: 50,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 0,
              right: 5,
              left: 5,
            ),
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.deepOrange,
            textStyle:
                const TextStyle(fontStyle: FontStyle.italic, fontSize: 22),
          ),
          child: const Text(
            'Try your chance',
          ),
        )
      ],
    );
  }
}
