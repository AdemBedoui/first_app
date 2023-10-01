
import 'dart:math' ;
import 'package:flutter/material.dart';

class diceRoller extends StatefulWidget {
  const diceRoller({super.key});

  @override
  State<diceRoller> createState() => _diceRollerState();
}

class _diceRollerState extends State<diceRoller> {
  var activeDiceImage = 'images/dice-1.png' ;

  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1 ;
    setState(() {
          activeDiceImage = 'images/dice-$diceRoll.png';

    });

    debugPrint('The button is clicked!');
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(activeDiceImage,width:200,),
                const SizedBox(height: 20),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,

                  ),
                  onPressed: rollDice, 
                child: const Text('Roll Dice',style: TextStyle(fontSize: 28),))
           
              ],

            );
  }
}