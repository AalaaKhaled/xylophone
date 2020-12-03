import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound({int soundNumber}) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber: soundNumber);
        },
        color: color,
        child: ListTile(
          leading: Icon(Icons.music_note_rounded),
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
              buildKey(color: Colors.red.shade300, soundNumber: 1),
              buildKey(color: Colors.orange.shade300, soundNumber: 2),
              buildKey(color: Colors.yellow.shade300, soundNumber: 3),
              buildKey(color: Colors.green.shade300, soundNumber: 4),
              buildKey(color: Colors.teal.shade300, soundNumber: 5),
              buildKey(color: Colors.blue.shade300, soundNumber: 6),
              buildKey(color: Colors.purple.shade300, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
