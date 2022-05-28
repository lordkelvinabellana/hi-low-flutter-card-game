// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_cards/screens/mobile_Screen/card_layuot_and_game_logic/mobile_card_layout_and_logic.dart';
import '../../buttons_and_icons/both/drawer.dart';

class MyMobileGameScreen extends StatefulWidget {
  const MyMobileGameScreen({Key? key}) : super(key: key);

  @override
  State<MyMobileGameScreen> createState() => _MyMobileGameScreenState();
}

class _MyMobileGameScreenState extends State<MyMobileGameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MobileCardLayoutAndLogic(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 7, 95, 46),
      ),
      drawer: MyDrawer(),
    );
  }
}
