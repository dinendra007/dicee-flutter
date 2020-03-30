import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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
  int rightnumber = 1;
  int leftnumber = 1;
  void changenum() {
    setState(() {
      leftnumber = Random().nextInt(6) + 1;
      rightnumber = Random().nextInt(6) + 1;
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
                  changenum();
                },
                child: Image.asset('images/dice$leftnumber.png')),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  changenum();
                },
                child: Image.asset('images/dice$rightnumber.png')),
          ),
        ],
      ),
    );
  }
}
