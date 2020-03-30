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
  int rightnum = 1;
  int leftnum = 1;
  void changenum() {
    setState(() {
      leftnum = Random().nextInt(6) + 1;
      rightnum = Random().nextInt(6) + 1;
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
                child: Image.asset('images/dice$leftnum.png')),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  changenum();
                },
                child: Image.asset('images/dice$rightnum.png')),
          ),
        ],
      ),
    );
  }
}
