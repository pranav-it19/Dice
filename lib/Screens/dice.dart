import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int diceX = 5;
  int diceY = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        title: Text('Dice Roller'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Container(
        child: Center(
          child: Row(children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {
                  diceFunction();
                },
                child: Image(image: AssetImage('assets/dice$diceX.png')),
              ),
            )),
            Expanded(
                child: GestureDetector(
              onTap: () {
                diceFunction();
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image(image: AssetImage('assets/dice$diceY.png')),
              ),
            )),
          ]),
        ),
      ),
    );
  }

  void diceFunction() {
    setState(() {
      diceX = Random().nextInt(6) + 1;

      diceY = Random().nextInt(6) + 1;
    });
  }
}
