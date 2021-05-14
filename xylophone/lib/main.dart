import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  //function
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget makekey(Color colCode, int soundNumber) {
    return Expanded(
      child: FlatButton(
        color: colCode,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            makekey(Colors.red, 1),
            makekey(Colors.orange, 2),
            makekey(Colors.yellow, 3),
            makekey(Colors.green, 4),
            makekey(Colors.teal, 5),
            makekey(Colors.blue, 6),
            makekey(Colors.purple, 7),
          ],
        )),
      ),
    );
  }
}
