import 'package:flutter/material.dart';
import 'package:flutter_cards/buttons_and_icons/both/drawer.dart';
import 'package:flutter_cards/screens/desktop_screens/card_layout_and%20game_logic/desk_card_layout_and_logic.dart';

class MyDesktopGameScreen extends StatefulWidget {
  const MyDesktopGameScreen({Key? key}) : super(key: key);

  @override
  State<MyDesktopGameScreen> createState() => _MyDesktopGameScreenState();
}

class _MyDesktopGameScreenState extends State<MyDesktopGameScreen> {
  //shows a dialog box on how to play the game

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DesktopCardLayoutAndLogic(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 7, 95, 46),
      ),
      drawer: MyDrawer(),
    );
  }
}
