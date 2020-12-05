import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var upperDice = 1;
  var lowerDice = 1;

  void diceOne() {
    setState(() {
      upperDice = Random().nextInt(6) + 1;
      lowerDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(50.0), 
                child: Image.asset('images/dice$upperDice.png'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset('images/dice$lowerDice.png'),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.29,
              margin: EdgeInsets.only(bottom: 50.0),
              child: RaisedButton(
                onPressed: (){
                  diceOne();
                },
                child: Text('Play'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
