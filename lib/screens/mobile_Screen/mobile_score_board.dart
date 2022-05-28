import 'package:flutter/material.dart';

class MobileScoreBoard extends StatefulWidget {
  int playerScore;

  MobileScoreBoard(this.playerScore);

  @override
  State<MobileScoreBoard> createState() => _MobileScoreBoardState();
}

class _MobileScoreBoardState extends State<MobileScoreBoard> {
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
      child: Column(
        children: [
          Container(
            child: Center(
              child: Text(
                'HIGHSCORE: ' + highscore.toString(),
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Center(
              child: Text(
                'SCORE: ' + widget.playerScore.toString(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
