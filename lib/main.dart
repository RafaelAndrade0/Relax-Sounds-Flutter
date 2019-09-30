import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final player = AudioCache();
  void playSound(int soundNumber) {
    player.play('sound$soundNumber.mp3');
  }

  void stopSound(int soundNumber) {
    player.clear('sound$soundNumber.mp3');
    print('Stop Sound $soundNumber');
  }

  Expanded createCardSound(int number) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          playSound(number);
        },
        onLongPress: () {
          stopSound(number);
        },
        child: Card(
          elevation: 5,
          margin: EdgeInsets.all(10),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/$number.jpg'), fit: BoxFit.fill),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              createCardSound(0),
              createCardSound(1),
              createCardSound(2),
              createCardSound(3),
            ],
          ),
        ),
      ),
    );
  }
}
