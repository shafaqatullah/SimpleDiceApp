import 'package:flutter/material.dart';
import 'dice.dart';

void main() => runApp(DiceApp());

class DiceApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Dice App',
      home: Scaffold(
        backgroundColor: Colors.teal.shade200,
        appBar: AppBar(
          backgroundColor: Colors.teal.shade500,
          title: Text(
            'Dice App Zaheer',


            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,

            ),
          ),
          centerTitle: true,
        ),
        body: DiceAction(),
      ),
    );
  }
}
