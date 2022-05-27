import 'package:flutter/material.dart';

class PMyGameScreen extends StatelessWidget {
  const PMyGameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return caffold(
      //background
      body: Container(
        child: MyCardsAndGameLogic(),
      ),
      //an app bar which displays the title and menu items
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 7, 95, 46),
        elevation: 0,
      ),
      //drawer bar
      drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 52, 168, 56),
          child: ListView(
            children: [
              DrawerHeader(
                child: Image.asset(
                  'assets/images/tittle.png',
                ),
              ),
              ListTile(
                //returns back to the main menu/home screen
                leading: Icon(Icons.home),
                title: Text(
                  'Main Menu',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyHomeScreen()),
                  );
                },
              ),
              ListTile(
                //shows instrucitons on the rules of the game
                leading: Icon(Icons.question_mark_rounded),
                title: Text(
                  'How to Play',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  _showHelp();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
