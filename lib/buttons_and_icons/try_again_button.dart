import 'package:flutter/material.dart';
import 'package:flutter_cards/responsive/responsive_layout.dart';
import 'package:flutter_cards/screens/mobile_Screen/mob_game_screen.dart';

import '../screens/desktop_screens/desk_game_screen.dart';

class TryAgain extends StatefulWidget {
  const TryAgain({Key? key}) : super(key: key);

  @override
  State<TryAgain> createState() => _TryAgainState();
}

class _TryAgainState extends State<TryAgain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 170,
      child: MaterialButton(
        elevation: 10,
        splashColor: Color.fromARGB(255, 163, 147, 5),
        color: Color.fromARGB(255, 245, 225, 45),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: (() {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ResponsiveLayout(
                mobileBody: MyMobileGameScreen(),
                desktopBody: MyDesktopGameScreen(),
              ),
            ),
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
