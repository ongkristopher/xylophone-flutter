import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play("note$soundNumber.wav");
  }

  Expanded buildKey({int soundNumber, Color noteColor}){
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(noteColor),
        ),
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
              buildKey(soundNumber: 1, noteColor: Colors.red),
              buildKey(soundNumber: 2, noteColor: Colors.orange),
              buildKey(soundNumber: 3, noteColor: Colors.yellow),
              buildKey(soundNumber: 4, noteColor: Colors.green),
              buildKey(soundNumber: 5, noteColor: Colors.teal),
              buildKey(soundNumber: 6, noteColor: Colors.blue),
              buildKey(soundNumber: 7, noteColor: Colors.purple),
            ],
          )
        ),
      ),
    );
  }
}