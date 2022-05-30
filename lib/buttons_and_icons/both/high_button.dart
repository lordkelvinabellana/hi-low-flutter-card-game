import 'package:flutter/material.dart';

class HighButton extends StatelessWidget {
  const HighButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(-0.36, 0.85),
      child: Container(
        height: 130,
        width: 200,
        child: MaterialButton(
          elevation: 10,
          splashColor: Color.fromARGB(255, 114, 11, 4),
          color: Colors.red,
          onPressed: () {
            //CheckGuess();
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Container(
                child: Center(
                  child: Icon(
                    Icons.keyboard_double_arrow_up_rounded,
                    size: 80,
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    'H I G H',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
