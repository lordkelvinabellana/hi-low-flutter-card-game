import 'package:flutter/material.dart';
import 'package:flutter_cards/game_and_elements/cards_and_game_logic.dart';
import 'package:flutter_cards/screens/home_screen.dart';

class MyGameScreen extends StatefulWidget {
  const MyGameScreen({Key? key}) : super(key: key);

  @override
  State<MyGameScreen> createState() => _MyGameScreenState();
}

class _MyGameScreenState extends State<MyGameScreen> {
  //shows a dialog box on how to play the game
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //background
      body: Container(
        child: MyCardsAndGameLogic(),
      ),
      //an app bar which displays the title and menu items
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 7, 95, 46),
        elevation: 0,
      ),
      //drawer bar
      drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 52, 168, 56),
          child: ListView(
            children: [
              DrawerHeader(
                child: Image.asset(
                  'assets/images/tittle.png',
                ),
              ),
              ListTile(
                //returns back to the main menu/home screen
                leading: Icon(Icons.home),
                title: Text(
                  'Main Menu',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyHomeScreen()),
                  );
                },
              ),
              ListTile(
                //shows instrucitons on the rules of the game
                leading: Icon(Icons.question_mark_rounded),
                title: Text(
                  'How to Play',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  _showHelp();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
