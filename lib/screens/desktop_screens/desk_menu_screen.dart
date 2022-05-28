// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_cards/buttons_and_icons/both/credits.dart';
import 'package:flutter_cards/buttons_and_icons/both/game_title.dart';
import 'package:flutter_cards/buttons_and_icons/both/main_menu_background.dart';
import 'package:flutter_cards/buttons_and_icons/play_button.dart';

class MyDesktopMenuScreen extends StatefulWidget {
  const MyDesktopMenuScreen({Key? key}) : super(key: key);

  @override
  State<MyDesktopMenuScreen> createState() => _MyDesktopMenuScreenState();
}

class _MyDesktopMenuScreenState extends State<MyDesktopMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MainMenuBackground(),
          Column(
            children: [
              GameTitle(),
              PlayButton(),
              SizedBox(
                height: 150,
              ),
              Credits(),
            ],
          )
        ],
      ),
    );
  }
}
