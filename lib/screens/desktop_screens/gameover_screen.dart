import 'package:flutter/material.dart';

import '../../buttons_and_icons/both/main_menu_button.dart';
import '../../buttons_and_icons/both/try_again_button.dart';

class GameOver extends StatelessWidget {
  final playerScore;

  const GameOver({super.key, required this.playerScore});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 95, 46),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'G A M E  O V E R',
                  style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'You Guessed Incorrectly',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Guess Streak : ' + playerScore.toString(),
                  style: TextStyle(fontSize: 40),
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
