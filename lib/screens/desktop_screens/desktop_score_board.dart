import 'package:flutter/material.dart';

class DesktopScoreBoard extends StatefulWidget {
  int playerScore;

  DesktopScoreBoard(this.playerScore);

  @override
  State<DesktopScoreBoard> createState() => _DesktopScoreBoardState();
}

class _DesktopScoreBoardState extends State<DesktopScoreBoard> {
  int highscore = 0;
  void highScore() {
    if (widget.playerScore > highscore) {
      setState(() {
        highscore = widget.playerScore;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    highScore();
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 100,
            width: 300,
            child: Center(
              child: Text(
                'SCORE: ' + widget.playerScore.toString(),
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            width: 300,
            child: Center(
              child: Text(
                'HIGHSCORE: ' + highscore.toString(),
                style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
