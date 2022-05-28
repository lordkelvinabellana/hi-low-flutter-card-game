import 'package:flutter/material.dart';

class GameTitle extends StatelessWidget {
  const GameTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: 300,
        child: Image(
          image: AssetImage('assets/images/tittle.png'),
        ),
      ),
    );
  }
}
