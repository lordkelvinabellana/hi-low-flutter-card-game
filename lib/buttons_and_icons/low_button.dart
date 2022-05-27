import 'package:flutter/material.dart';

class LowButton extends StatelessWidget {
  const LowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0.32, 0.85),
      child: Container(
        height: 130,
        width: 200,
        child: MaterialButton(
          elevation: 10,
          splashColor: Color.fromARGB(255, 3, 61, 109),
          color: Colors.blue,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Container(
                child: Center(
                  child: Icon(
                    Icons.keyboard_double_arrow_down_rounded,
                    size: 80,
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    'L O W',
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
