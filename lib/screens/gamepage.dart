import 'package:flutter/material.dart';
import 'package:flutter_cards/responsive/responsive_layout.dart';
import 'package:flutter_cards/screens/desktop_screens/desk_game_screen.dart';
import 'package:flutter_cards/screens/mobile_Screen/mob_game_screen.dart';

class Gamepage extends StatefulWidget {
  @override
  State<Gamepage> createState() => _GamepageState();
}

class _GamepageState extends State<Gamepage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: MyMobileGameScreen(),
      desktopBody: MyDesktopGameScreen(),
    );
  }
}
