import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void soundAppPlay(int soundNumber) {
    final player = AssetsAudioPlayer();
    player.open(
      Audio('assets/audios/note$soundNumber.wav'),
    );
  }

  Expanded keyGenerate(
      {Color color = Colors.red, int numberS = 1, String noteA = ''}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            soundAppPlay(numberS);
          },
          child: Text(
            '$noteA',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              keyGenerate(color: Colors.red, numberS: 1, noteA: 'DO'),
              keyGenerate(color: Colors.orange, numberS: 2, noteA: 'RE'),
              keyGenerate(color: Colors.yellow, numberS: 3, noteA: 'MI'),
              keyGenerate(color: Colors.lightGreen, numberS: 4, noteA: 'FA'),
              keyGenerate(color: Colors.greenAccent, numberS: 5, noteA: 'SOL'),
              keyGenerate(color: Colors.blue, numberS: 6, noteA: 'LA'),
              keyGenerate(color: Colors.purple, numberS: 7, noteA: 'SI'),
            ],
          ),
        ),
      ),
    );
  }
}
