// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../screens/desktop_screens/desk_menu_screen.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
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
    return Drawer(
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
              leading: Icon(Icons.home),
              title: Text(
                'Main Menu',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => MyDesktopMenuScreen()),
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
    );
  }
}
