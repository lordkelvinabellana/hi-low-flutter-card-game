// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DesktopDeck extends StatelessWidget {
  const DesktopDeck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(-0.85, 0),
      child: Container(
        height: 300,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/images/back.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
