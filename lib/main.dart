import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade200,
        appBar: AppBar(
          title: Center(child: Text('War Dice Game',
            style: TextStyle(
              fontFamily: 'Staatliches',
              fontSize: 36.0,
            color: Colors.black
            ),
          ),
          ),
          backgroundColor: Colors.orange.shade200,
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

  int attackerLeftDiceNumber = 1;
  int attackerMiddleDiceNumber = 1;
  int attackerRightDiceNumber = 1;
  int defenderLeftDiceNumber = 1;
  int defenderMiddleDiceNumber = 1;
  int defenderRightDiceNumber = 1;

  void changeDiceNumberAttack() {
    setState(() {
      attackerLeftDiceNumber = Random().nextInt(6) + 1;
      attackerMiddleDiceNumber = Random().nextInt(6) + 1;
      attackerRightDiceNumber = Random().nextInt(6) + 1;
    },);
  }
  void changeDiceNumberDefend() {
    setState(() {
      defenderLeftDiceNumber = Random().nextInt(6) + 1;
      defenderMiddleDiceNumber = Random().nextInt(6) + 1;
      defenderRightDiceNumber = Random().nextInt(6) + 1;
    },);
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ListTile(
          title: Center(child: Text('Attacker',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
          ),
        ),
        Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    changeDiceNumberAttack();
                  },
                  child: Image.asset('images/diceAttack$attackerLeftDiceNumber.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    changeDiceNumberAttack();
                  },
                  child: Image.asset('images/diceAttack$attackerMiddleDiceNumber.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    changeDiceNumberAttack();
                  },
                  child: Image.asset('images/diceAttack$attackerRightDiceNumber.png'),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 80.0,
          width: 300.0,
          child: Divider(
            color: Colors.blueGrey.shade500,
          ),
        ),

        Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    changeDiceNumberDefend();
                  },
                  child: Image.asset('images/diceDefend$defenderLeftDiceNumber.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    changeDiceNumberDefend();
                  },
                  child: Image.asset('images/diceDefend$defenderMiddleDiceNumber.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    changeDiceNumberDefend();
                  },
                  child: Image.asset('images/diceDefend$defenderRightDiceNumber.png'),
                ),
              ),
            ],
          ),
        ),
        ListTile(
          title: Center(child: Text('Defender',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
          ),
        ),
      ],
    );
  }
}
