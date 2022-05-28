// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MobileDeck extends StatelessWidget {
  const MobileDeck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage('assets/images/back.png'),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
