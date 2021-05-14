import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            TextButton(
              onPressed: () {
                final player = AudioCache();
                player.play('note1.wav');
              },
              child: Center(
                child: Text('Click Me!'),
              ),
            ),
            TextButton(
              onPressed: () {
                final player = AudioCache();
                player.play('note2.wav');
              },
              child: Center(
                child: Text('Click Me!'),
              ),
            ),
            TextButton(
              onPressed: () {
                final player = AudioCache();
                player.play('note3.wav');
              },
              child: Center(
                child: Text('Click Me!'),
              ),
            ),
            TextButton(
              onPressed: () {
                final player = AudioCache();
                player.play('note4.wav');
              },
              child: Center(
                child: Text('Click Me!'),
              ),
            ),
            TextButton(
              onPressed: () {
                final player = AudioCache();
                player.play('note5.wav');
              },
              child: Center(
                child: Text('Click Me!'),
              ),
            ),
            TextButton(
              onPressed: () {
                final player = AudioCache();
                player.play('note6.wav');
              },
              child: Center(
                child: Text('Click Me!'),
              ),
            ),
            TextButton(
              onPressed: () {
                final player = AudioCache();
                player.play('note7.wav');
              },
              child: Center(
                child: Text('Click Me!'),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
