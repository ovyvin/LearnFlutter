import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void SoundAppPlay(int soundNumber) {
    final player = AssetsAudioPlayer();
    player.open(
      Audio('assets/audios/note$soundNumber.wav'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Column(
            children: [
              Container(
                width: 600.0,
                height: 60.0,
                color: Colors.red,
                child: TextButton(
                  onPressed: () {
                    SoundAppPlay(1);
                  },
                  child: Text(
                    'DO',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                width: 600.0,
                height: 60.0,
                color: Colors.orange,
                child: TextButton(
                  onPressed: () {
                    SoundAppPlay(2);
                  },
                  child: Text(
                    'RE',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                width: 600.0,
                height: 60.0,
                color: Colors.yellow,
                child: TextButton(
                  onPressed: () {
                    SoundAppPlay(3);
                  },
                  child: Text(
                    'MI',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                width: 600.0,
                height: 60.0,
                color: Colors.lightGreen,
                child: TextButton(
                  onPressed: () {
                    SoundAppPlay(4);
                  },
                  child: Text(
                    'FA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                width: 600.0,
                height: 60.0,
                color: Colors.greenAccent,
                child: TextButton(
                  onPressed: () {
                    SoundAppPlay(5);
                  },
                  child: Text(
                    'SOL',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                width: 600.0,
                height: 60.0,
                color: Colors.blue,
                child: TextButton(
                  onPressed: () {
                    SoundAppPlay(6);
                  },
                  child: Text(
                    'LA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                width: 600.0,
                height: 60.0,
                color: Colors.purpleAccent,
                child: TextButton(
                  onPressed: () {
                    SoundAppPlay(7);
                  },
                  child: Text(
                    'SI',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
