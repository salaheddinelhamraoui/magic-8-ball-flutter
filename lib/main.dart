import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: magicBall(),
    ),
  );
}

class magicBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Center(
          child: Text('Ask Me Anything'),
        ),
      ),
      body: magicBallful(),
    );
  }
}

class magicBallful extends StatefulWidget {
  @override
  _magicBallfulState createState() => _magicBallfulState();
}

class _magicBallfulState extends State<magicBallful> {
  int randomImage = 1;

  void changeAnswer() {
    setState(() {
      randomImage = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: () {
            changeAnswer();
          },
          child: Image.asset('images/ball$randomImage.png'),
        ),
      ),
    );
  }
}
