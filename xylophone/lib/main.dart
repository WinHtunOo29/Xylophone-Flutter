import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {

  const XylophoneApp({super.key});

  void playSound(int note) {
    final audioPlayer = AudioPlayer();
    audioPlayer.setSourceAsset('note$note.wav');
    audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound(1);
                },
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.red),
                  shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    )
                  )
                ),
               child: const Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound(2);
                },
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.orange),
                  shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    )
                  )
                ),
                child: const Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound(3);
                },
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.yellow),
                  shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    )
                  )
                ),
                child: const Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound(4);
                },
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.lightGreen),
                  shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    )
                  )
                ),
                child: const Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound(5);
                },
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.green),
                  shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    )
                  )
                ),
                child: const Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound(6);
                },
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    )
                  )
                ),
                child: const Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound(7);
                },
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.purple),
                  shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    )
                  )
                ),
                child: const Text(''),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
