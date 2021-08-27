import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("Ask Me Anything"),
          backgroundColor: Colors.blue[900],
        ),
        body: Ball(),
      )));
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int magicBall = 1;

  void changeBall() {
    setState(() {
      magicBall = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: TextButton(
          onPressed: () {
            changeBall();
          },
          child: Image.asset('images/ball$magicBall.png'),
        ),
      ),
    );
  }
}
