import 'dart:math';
import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

final Random randomNumberGenerator = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // String currentDiceImage = './assets/images/dice-1.png';
  int currentDiceNumber = 2;

  void rollDicePressed() {
    setState(() {
      currentDiceNumber = randomNumberGenerator.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          './assets/images/dice-$currentDiceNumber.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDicePressed,
          child: const StyledText('Roll Dice'),
        ),
      ],
    );
  }
}
