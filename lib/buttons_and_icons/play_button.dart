import 'package:flutter/material.dart';
import 'package:flutter_cards/screens/desktop_screens/desk_game_screen.dart';

import '../screens/gamepage.dart';

class PlayButton extends StatefulWidget {
  const PlayButton({Key? key}) : super(key: key);

  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Gamepage()),
        );
      },
      child: Container(
        alignment: Alignment(0, 0.2),
        child: Container(
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
                  'P L A Y',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
