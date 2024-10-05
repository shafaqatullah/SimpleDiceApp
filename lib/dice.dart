import 'package:flutter/material.dart';
import 'dart:math';

class DiceAction extends StatefulWidget {
  const DiceAction({super.key});

  @override
  State<DiceAction> createState() => _DiceActionState();
}

class _DiceActionState extends State<DiceAction> {
  int diceOneNumber = 1;
  int diceTwoNumber = 2;

  void changeDiceNumber() {
    setState(() {
      diceOneNumber = Random().nextInt(6) + 1;
      diceTwoNumber = Random().nextInt(6) + 1;
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
                changeDiceNumber();
              },
              child: Image.asset(
                'images/dice_$diceOneNumber.png',
                width: 170,
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceNumber();
              },
              child: Image.asset(
                'images/dice_$diceTwoNumber.png',
                width: 170,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
