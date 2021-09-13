import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound( int soundNo){

    final player = AudioCache();
    player.play('note$soundNo.wav');
  }



  Expanded buildkey({Color color , int soundNo}){
    return Expanded(
      child: ElevatedButton(
          style : ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
          ),
        onPressed: (){
          playSound(soundNo);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Xylophone'),
          backgroundColor: Colors.black,
        ),
        body:
        SafeArea(
          
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildkey(color: Colors.red, soundNo: 1),
                buildkey(color: Colors.blue, soundNo: 2),
                buildkey(color: Colors.green, soundNo: 3),
                buildkey(color: Colors.yellow, soundNo: 4),
                buildkey(color: Colors.teal, soundNo: 5),
                buildkey(color: Colors.orange, soundNo: 6),
                buildkey(color: Colors.purple, soundNo: 7),


              ],
            )
        ),
      ),
    );
  }
}
