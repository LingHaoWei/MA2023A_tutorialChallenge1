import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const BallPage(),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent[100],
        appBar: AppBar(
          title: const Center(child: Text('Ask Me Anything')),
          backgroundColor: Colors.blue[700],
        ),
        body: const Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber = 1;
  void randomAnswer() {
    ballNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top:10, bottom: 8),
            child: const Text('ASK & CLICK',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  randomAnswer();
                });
                print('Ball is pressed, ball number is $ballNumber');
              },
              child: Image.asset(
                'images/ball$ballNumber.png',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top:8.0,bottom:8.0),
            child: Text('*Ask any question and click the ball in the middle for answer.',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 14,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

