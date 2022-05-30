import 'package:flutter/material.dart';
import 'package:flutter_cards/buttons_and_icons/both/main_menu_button.dart';
import 'package:flutter_cards/buttons_and_icons/both/try_again_button.dart';

class GameOverMobile extends StatelessWidget {
  final playerScore;

  const GameOverMobile({super.key, required this.playerScore});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 95, 46),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Center(
                child: Text(
                  'G A M E  O V E R',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                child: Text(
                  'You Guessed Incorrectly',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                child: Text(
                  'Guess Streak : ' + playerScore.toString(),
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TryAgain(),
                MainMenu(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
