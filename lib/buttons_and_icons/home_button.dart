import 'dart:html';

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final nameOfButton;
  MyButton(this.nameOfButton);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 250,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          height: 100,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Color.fromRGBO(225, 215, 0, 1),
          ),
          child: Center(
            child: Text(
              nameOfButton,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
