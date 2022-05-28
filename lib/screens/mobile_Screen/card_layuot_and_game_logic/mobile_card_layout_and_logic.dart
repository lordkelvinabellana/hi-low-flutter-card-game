// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, sized_box_for_whitespace, use_key_in_widget_constructors

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_cards/game_and_elements/deck.dart';
import 'package:flutter_cards/screens/desktop_screens/desktop_score_board.dart';
import 'package:flutter_cards/screens/desktop_screens/gameover_screen.dart';
import 'package:flutter_cards/screens/mobile_Screen/mobile_score_board.dart';
import 'package:flutter_cards/screens/mobile_Screen/card_layuot_and_game_logic/mobile_deck.dart';

import '../gameover_mobile.dart';

class MobileCardLayoutAndLogic extends StatefulWidget {
  @override
  State<MobileCardLayoutAndLogic> createState() =>
      _MobileCardLayoutAndLogicState();
}

class _MobileCardLayoutAndLogicState extends State<MobileCardLayoutAndLogic> {
  Map<String, int> playingDeck = {};
  bool gameStarted = false;
  bool isDrawn = false;
  bool isGuessCorrect = true;
  bool isGameOver = false;
  int nextCard = 0;
  int currentCard = 0;
  int correctCard = 0;
  int playerScore = 0;
  int highscore = 0;
  int numOfCorrectGuesses = 0;
  String image1 = 'assets/images/back.png';
  String image2 = 'assets/images/back.png';
  String image3 = 'assets/images/back.png';
  String image4 = 'assets/images/back.png';
  String image5 = 'assets/images/back.png';
  List<String> correctGuess = [];
  final Map<String, int> deckOfCards = {
    "assets/images/AC.png": 1,
    "assets/images/AD.png": 1,
    "assets/images/AH.png": 1,
    "assets/images/AS.png": 1,
    "assets/images/2C.png": 2,
    "assets/images/2D.png": 2,
    "assets/images/2H.png": 2,
    "assets/images/2S.png": 2,
    "assets/images/3C.png": 3,
    "assets/images/3D.png": 3,
    "assets/images/3H.png": 3,
    "assets/images/3S.png": 3,
    "assets/images/4C.png": 4,
    "assets/images/4D.png": 4,
    "assets/images/4H.png": 4,
    "assets/images/4S.png": 4,
    "assets/images/5C.png": 5,
    "assets/images/5D.png": 5,
    "assets/images/5H.png": 5,
    "assets/images/5S.png": 5,
    "assets/images/6C.png": 6,
    "assets/images/6D.png": 6,
    "assets/images/6H.png": 6,
    "assets/images/6S.png": 6,
    "assets/images/7C.png": 7,
    "assets/images/7D.png": 7,
    "assets/images/7H.png": 7,
    "assets/images/7S.png": 7,
    "assets/images/8C.png": 8,
    "assets/images/8D.png": 8,
    "assets/images/8H.png": 8,
    "assets/images/8S.png": 8,
    "assets/images/9C.png": 9,
    "assets/images/9D.png": 9,
    "assets/images/9H.png": 9,
    "assets/images/9S.png": 9,
    "assets/images/10C.png": 10,
    "assets/images/10D.png": 10,
    "assets/images/10H.png": 10,
    "assets/images/10S.png": 10,
    "assets/images/JC.png": 11,
    "assets/images/JD.png": 11,
    "assets/images/JH.png": 11,
    "assets/images/JS.png": 11,
    "assets/images/QC.png": 12,
    "assets/images/QD.png": 12,
    "assets/images/QH.png": 12,
    "assets/images/QS.png": 12,
    "assets/images/KC.png": 13,
    "assets/images/KD.png": 13,
    "assets/images/KH.png": 13,
    "assets/images/KS.png": 13,
  };

  //to push all the deckofcards in the playable deck
  @override
  void initState() {
    super.initState();
    playingDeck.addAll(deckOfCards);
    pickCard();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 7, 95, 46),
        body: isGameOver
            ? GameOverMobile(playerScore: playerScore)
            : Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: MobileScoreBoard(playerScore),
                  ),
                  Expanded(
                    flex: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MobileDeck(),
                        presentCard(),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Stack(
                      children: [
                        correctCardSpace1(-0.8, image1),
                        correctCardSpace2(-0.4, image2),
                        correctCardSpace3(0, image3),
                        correctCardSpace4(0.4, image4),
                        correctCardSpace5(0.8, image5),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        highButton(),
                        lowButton(),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  Widget correctCardSpace1(double alignmentX, String imagepath) {
    return Container(
      alignment: Alignment(alignmentX, 0),
      child: Container(
        height: 230,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(imagepath),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }

  Widget correctCardSpace2(double alignmentX, String imagepath) {
    return Container(
      alignment: Alignment(alignmentX, 0),
      child: Container(
        height: 230,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(imagepath),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }

  Widget correctCardSpace3(double alignmentX, String imagepath) {
    return Container(
      alignment: Alignment(alignmentX, 0),
      child: Container(
        height: 230,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(imagepath),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }

  Widget correctCardSpace4(double alignmentX, String imagepath) {
    return Container(
      alignment: Alignment(alignmentX, 0),
      child: Container(
        height: 230,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(imagepath),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }

  Widget correctCardSpace5(double alignmentX, String imagepath) {
    return Container(
      alignment: Alignment(alignmentX, 0),
      child: Container(
        height: 230,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(imagepath),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }

  void passCorrectCard() {
    ++numOfCorrectGuesses;
    if (numOfCorrectGuesses == 1) {
      setState(() {
        image1 = playingDeck.keys.elementAt(currentCard);
      });
    } else if (numOfCorrectGuesses == 2) {
      setState(() {
        image2 = playingDeck.keys.elementAt(currentCard);
      });
    } else if (numOfCorrectGuesses == 3) {
      setState(() {
        image3 = playingDeck.keys.elementAt(currentCard);
      });
    } else if (numOfCorrectGuesses == 4) {
      setState(() {
        image4 = playingDeck.keys.elementAt(currentCard);
      });
    } else if (numOfCorrectGuesses == 5) {
      setState(() {
        image5 = playingDeck.keys.elementAt(currentCard);
      });
    } else if (numOfCorrectGuesses >= 6) {
      setState(() {
        numOfCorrectGuesses = 0;
        passCorrectCard();
      });
    }
  }

  void highScore() {
    if (playerScore > highscore) {
      setState(() {
        highscore = playerScore;
      });
    }
  }

  Widget scoreBoard() {
    highScore();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 100,
          width: 300,
          child: Center(
            child: Text(
              'SCORE: ' + playerScore.toString(),
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
    );
  }

  Widget presentCard() {
    if (gameStarted) {
      pickCard();
    }
    return isDrawn
        ? Container(
            height: 230,
            width: 150,
            child: drawCard(),
          )
        : Container(
            height: 230,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green,
            ),
          );
  }

  Widget drawCard() {
    passCard();
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.transparent,
        image: DecorationImage(
          image: AssetImage(
            playingDeck.keys.elementAt(currentCard),
          ),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }

  Widget highButton() {
    return Container(
      alignment: Alignment.center,
      child: Container(
        height: 70,
        width: 140,
        child: MaterialButton(
          elevation: 3,
          splashColor: Color.fromARGB(255, 114, 11, 4),
          color: Colors.red,
          onPressed: () {
            setState(() {
              pickCard();
              compareIfHighCard();
              passCard();
            });
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(children: [
            Container(
              child: Center(
                child: Icon(
                  Icons.keyboard_double_arrow_up_rounded,
                  size: 40,
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'H I G H',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget lowButton() {
    return Container(
      alignment: Alignment.center,
      child: Container(
        height: 70,
        width: 140,
        child: MaterialButton(
          elevation: 3,
          splashColor: Color.fromARGB(255, 3, 61, 109),
          color: Colors.blue,
          onPressed: () {
            setState(() {
              pickCard();
              compareIfLowCard();
              passCard();
            });
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(children: [
            Container(
              child: Center(
                child: Icon(
                  Icons.keyboard_double_arrow_down_rounded,
                  size: 40,
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  'L O W',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  void pickCard() {
    Random random = Random();
    int max = playingDeck.length;
    nextCard = random.nextInt(max);
    setState(() {
      isDrawn = true;
    });
  }

  void passCard() {
    setState(() {
      currentCard = nextCard;
    });
  }

  String getPath() {
    String imagepath = '';
    if (isGuessCorrect && gameStarted) {
      setState(() {
        imagepath = playingDeck.keys.elementAt(currentCard);
      });
    }
    return imagepath;
  }

  void compareIfHighCard() {
    if (playingDeck.values.elementAt(nextCard) >=
        playingDeck.values.elementAt(currentCard)) {
      setState(() {
        isGuessCorrect = true;
        playerScore++;
        passCorrectCard();
      });
    } else {
      setState(() {
        isGameOver = true;
      });
    }
  }

  void compareIfLowCard() {
    if (playingDeck.values.elementAt(nextCard) <
        playingDeck.values.elementAt(currentCard)) {
      setState(() {
        playerScore++;
        isGuessCorrect = true;
        passCorrectCard();
      });
    } else {
      setState(() {
        isGameOver = true;
      });
    }
  }
}
