import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
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
                    final player = AssetsAudioPlayer();
                    player.open(
                      Audio("assets/audios/note1.wav"),
                    );
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
                    final player = AssetsAudioPlayer();
                    player.open(
                      Audio("assets/audios/note2.wav"),
                    );
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
                    final player = AssetsAudioPlayer();
                    player.open(
                      Audio("assets/audios/note3.wav"),
                    );
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
                    final player = AssetsAudioPlayer();
                    player.open(
                      Audio("assets/audios/note4.wav"),
                    );
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
                    final player = AssetsAudioPlayer();
                    player.open(
                      Audio("assets/audios/note5.wav"),
                    );
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
                    final player = AssetsAudioPlayer();
                    player.open(
                      Audio("assets/audios/note6.wav"),
                    );
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
                    final player = AssetsAudioPlayer();
                    player.open(
                      Audio("assets/audios/note7.wav"),
                    );
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
