import 'dart:math';

import 'package:flutter/material.dart';

class PresentCard extends StatefulWidget {
  Map<String, int> playingDeck = {};
  bool gameStarted = false;

  PresentCard(this.gameStarted, this.playingDeck);

  @override
  State<PresentCard> createState() => _PresentCardState();
}

class _PresentCardState extends State<PresentCard> {
  int presentCard = 0;
  bool isGetCard = false;
  int nextCard = 0;
  List<String> drawnCard = [];

  @override
  Widget build(BuildContext context) {
    return widget.gameStarted
        ? Container(height: 330, width: 230, child: DrawCard())
        : Container(
            height: 330,
            width: 230,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green,
            ),
          );
  }

  int pickCard() {
    Random random = Random();
    int max = widget.playingDeck.length;
    setState(() {
      nextCard = random.nextInt(max);
      isGetCard = true;
    });
    if (widget.gameStarted && isGetCard) {
      setState(() {
        presentCard = nextCard;
        isGetCard = false;
      });
    }
    return presentCard;
  }

  Widget DrawCard() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.transparent,
        image: DecorationImage(
          //pass in the correct image
          image: AssetImage(
            widget.playingDeck.keys.elementAt(pickCard()),
          ),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
