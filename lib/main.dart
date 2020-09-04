import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';

void main() {
  runApp(MagicBall());
}

class MagicBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
        ),
        body: MagicBallBody(),
      ),
    );
  }
}

class MagicBallBody extends StatefulWidget {
  @override
  _MagicBallBodyState createState() => _MagicBallBodyState();
}

class _MagicBallBodyState extends State<MagicBallBody> {
  var ballno = 1;

  void ballroll() {
    ballno = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          child: Image.asset('images/ball$ballno.png'),
          onPressed: () {
            setState(() {
              ballroll();
            });
          },
        ),
        padding: EdgeInsets.symmetric(horizontal: 20.0),
      ),
    );
  }
}
