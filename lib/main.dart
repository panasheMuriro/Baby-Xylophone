import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundName) {
    final player = AudioCache();
    player.play('note$soundName.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(235, 151, 136, 1),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(136, 0, 0, 1),
          title: Text('Precious Muriro'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  color: Color.fromRGBO(243, 198, 35, 1),
                  onPressed: () {
                    playSound(1);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Color.fromRGBO(0, 168, 204, 1),
                  onPressed: () {
                    playSound(2);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Color.fromRGBO(253, 94, 83, 1),
                  onPressed: () {
                    playSound(3);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Color.fromRGBO(99, 154, 103, 1),
                  onPressed: () {
                    playSound(4);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Color.fromRGBO(253, 46, 179, 1),
                  onPressed: () {
                    playSound(5);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Color.fromRGBO(223, 133, 67, 1),
                  onPressed: () {
                    playSound(6);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Color.fromRGBO(236, 206, 109, 1),
                  onPressed: () {
                    playSound(7);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
