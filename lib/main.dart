import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Dicee by Nosa'),
          backgroundColor: Colors.grey,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int rightDice = 1;
  int leftDice = 6;
  void changeDices() {
    setState(() {
      rightDice = Random().nextInt(6) + 1;
      leftDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  changeDices();
                },
                child: Image.asset('images/dice$leftDice.png')),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  changeDices();
                },
                child: Image.asset('images/dice$rightDice.png')),
          ),
        ],
      ),
    );
  }
}
