import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buttonFuction(
      Color backgroundcolor, Color foregroundcolor, int ring) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          backgroundColor: backgroundcolor,
          foregroundColor: foregroundcolor,
        ),
        onPressed: () async {
          final player = AudioPlayer();
          player.play(AssetSource('note$ring.wav'));
        },
        child: Container(),
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
            children: <Widget>[
              buttonFuction(Colors.red, Colors.redAccent, 1),
              buttonFuction(Colors.orange, Colors.orangeAccent, 2),
              buttonFuction(Colors.yellow, Colors.yellowAccent, 3),
              buttonFuction(Colors.green, Colors.greenAccent, 4),
              buttonFuction(Colors.teal, Colors.tealAccent, 5),
              buttonFuction(Colors.blue, Colors.blueAccent, 6),
              buttonFuction(Colors.purple, Colors.purpleAccent, 7),
            ],
          ),
        ),
      ),
    );
  }
}