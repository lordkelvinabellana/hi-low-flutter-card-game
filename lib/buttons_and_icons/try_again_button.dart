import 'package:flutter/material.dart';

import '../screens/game_screen.dart';

class TryAgain extends StatefulWidget {
  const TryAgain({Key? key}) : super(key: key);

  @override
  State<TryAgain> createState() => _TryAgainState();
}

class _TryAgainState extends State<TryAgain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 200,
      child: MaterialButton(
        elevation: 10,
        splashColor: Color.fromARGB(255, 163, 147, 5),
        color: Color.fromARGB(255, 245, 225, 45),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: (() {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => MyGameScreen()),
          );
        }),
        child: Center(
          child: Text(
            'T R Y  A G A I N',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
