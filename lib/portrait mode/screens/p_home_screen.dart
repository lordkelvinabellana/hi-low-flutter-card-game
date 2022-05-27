import 'package:flutter/material.dart';
import 'package:flutter_cards/portrait%20mode/screens/p_game_screen.dart';

import '../../buttons_and_icons/game_title.dart';
import '../../buttons_and_icons/home_button.dart';

class PMyHomeScreen extends StatefulWidget {
  const PMyHomeScreen({Key? key}) : super(key: key);

  @override
  State<PMyHomeScreen> createState() => _PMyHomeScreenState();
}

class _PMyHomeScreenState extends State<PMyHomeScreen> {
  void _showHelp() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Center(
            child: Text('How to Play'),
          ),
          content: Text(
              '1. A card is shown and the player has to guess if the next card is >= or < the current card.'
              '\n2. Aces are considered to have a value of 1, Jack = 11, Queen = 12, King = 13'
              '\n3. If you guessed it correct, a point will be added, else the game will stop'),
          contentPadding: EdgeInsets.all(20),
          actions: [
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Ok Got it!'),
            )
          ],
        );
      },
    );

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Stack(children: [
          //background of the app
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg_main.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //logo of the game
          Container(
            child: GameTitle(),
          ),
          //for the buttons
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => PMyGameScreen()),
              );
            },
            //play button
            child: Container(
              alignment: Alignment(0, 0.2),
              child: MyButton('P L A Y'),
            ),
          ),
          //credits button
          Container(
            alignment: Alignment(0, 0.7),
            child: Center(
              child: Text(
                '@lordkelvinabellana',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ]),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
