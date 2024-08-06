import 'dart:math' as math;
import 'package:flutter/material.dart';

class DiceSection extends StatefulWidget {
  const DiceSection({super.key});

  @override
  State<DiceSection> createState() => _DiceSectionState();
}

class _DiceSectionState extends State<DiceSection> {
  final randomize = math.Random();
  var chosenDice = 1;
  int lastChosenDice = 0;

  void diceRoller() {
    setState(() {
      lastChosenDice = chosenDice;
      chosenDice = randomize.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Your Last Roll was $lastChosenDice'),
          Image.asset(
            'assets/images/dice-$chosenDice.png',
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: diceRoller,
              child: const Text(
                'Roll The Dice',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black),
              ))
        ],
      ),
    );
  }
}
