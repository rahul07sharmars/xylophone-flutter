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

  Widget makekey(Color col) {
    return Expanded(
      child: FlatButton(
        color: col,
        onPressed: () {
          playSound(1);
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
            makekey(Colors.red),
            makekey(Colors.orange),
            makekey(Colors.yellow),
            makekey(Colors.green),
            makekey(Colors.teal),
            makekey(Colors.blue),
            makekey(Colors.purple),
          ],
        )),
      ),
    );
  }
}
