import 'package:flutter/material.dart';
import 'package:flutter_cards/screens/home_screen.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

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
            MaterialPageRoute(builder: (context) => MyHomeScreen()),
          );
        }),
        child: Center(
          child: Text(
            'M A I N  M E N U',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
