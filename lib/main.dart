import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MyDiceeApp(),
  );
}

class MyDiceeApp extends StatefulWidget {
  const MyDiceeApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyDiceeApp> createState() => _MyDiceeAppState();
}

class _MyDiceeAppState extends State<MyDiceeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.red,
      ),
      home: Scaffold(
        body: DicePage(),
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red[600],
          elevation: 2,
          shadowColor: const Color.fromARGB(180, 0, 0, 0),
        ),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void rollDice() {
    final random = Random();
    setState(() {
      leftDiceNumber = random.nextInt(6) + 1; // Generates 0–5, so add 1
      rightDiceNumber = random.nextInt(6) + 1; // Generates 0–5, so add 1
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Flex(
        direction: Axis.horizontal,
        children: [
          DiceButton(
            diceNumber: leftDiceNumber,
            onPressed: rollDice,
          ),
          DiceButton(
            diceNumber: rightDiceNumber,
            onPressed: rollDice,
          ),
        ],
      ),
    );
  }
}

class DiceButton extends StatelessWidget {
  final int diceNumber;
  final VoidCallback onPressed;

  const DiceButton({
    super.key,
    required this.diceNumber,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: onPressed,
        child: Image.asset('images/dice$diceNumber.png'),
      ),
    );
  }
}
