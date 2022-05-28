// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MainMenuBackground extends StatelessWidget {
  const MainMenuBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg_main.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
