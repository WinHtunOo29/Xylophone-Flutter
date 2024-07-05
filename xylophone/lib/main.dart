import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final List colors = [Colors.red, Colors.orange, Colors.yellow, Colors.green, Colors.teal, Colors.blue, Colors.purple];

  XylophoneApp({super.key});

  void playSound(int note) {
    final audioPlayer = AudioPlayer();
    audioPlayer.setSourceAsset('note$note.wav');
    audioPlayer.resume();
  }

  Expanded buildKey({required Color color, required int note}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(note);
        },
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(color),
          shape: const WidgetStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            )
          )
        ),
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (int i=0; i<7; i++) buildKey(color: colors[i], note: i+1),
          ],
        ),
      ),
    );
  }
}
