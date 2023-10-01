import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNum) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNum.wav'));
  }

  Widget buildKey({required Color color,required int noteNum}){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playSound(noteNum);
        },
        child: Container(),  //Child cannot be null,so added container which is a empty widget
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              buildKey(color:Colors.red,noteNum:1),
              buildKey(color:Colors.orange,noteNum: 2),
              buildKey(color:Colors.yellow,noteNum: 3),
              buildKey(color:Colors.green,noteNum: 4),
              buildKey(color:Colors.teal,noteNum: 5),
              buildKey(color:Colors.blue,noteNum: 6),
              buildKey(color:Colors.purple,noteNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
