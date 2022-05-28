import 'package:flutter/material.dart';
import 'package:flutter_cards/screens/desktop_screens/desk_menu_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: MyDesktopMenuScreen(),
      ),
    );
  }
}
