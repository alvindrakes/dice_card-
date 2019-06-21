import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Dicee'),
            backgroundColor: Colors.red,
          ),
          body: DicePage()),
    ),
  );
}

// stateful widget is used when there is changes happening in the app that needs to trigger the build process
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var diceLeftNumber = 1;
  var diceRightNumber = 1;

  void changeBothDice() {
    setState(() {
      diceLeftNumber = Random().nextInt(6) + 1;
      diceRightNumber = Random().nextInt(6) + 1;
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
                    changeBothDice();
                  },
                  child: Image.asset('images/dice$diceLeftNumber.png'))),
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    changeBothDice();
                  },
                  child: Image.asset('images/dice$diceRightNumber.png')))
        ],
      ),
    );
  }
}
