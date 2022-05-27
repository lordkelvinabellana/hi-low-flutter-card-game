import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cards/portrait%20mode/p_home_screen.dart';
import 'package:flutter_cards/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) =>
              orientation == Orientation.landscape
                  ? MyHomeScreen()
                  : PMyHomeScreen(),
        ),
      ),
    );
  }
}
