import 'package:flutter/material.dart';
import 'package:flutter_cards/buttons_and_icons/home_button.dart';
import 'package:flutter_cards/buttons_and_icons/game_title.dart';

import 'game_screen.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
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
              MaterialPageRoute(builder: (context) => MyGameScreen()),
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
