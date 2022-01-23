import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(XylophoneApp());

void play(int num){
  final player = AudioCache();
  player.play('note$num.wav');
}

Expanded wid({Color col,int num})
{
  return Expanded(
    child:
    FlatButton(
      color: col,
      onPressed: ()
      {
        play(num);
      },

    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: SafeArea(
          child: Container(child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                    wid(num: 1,col: Colors.red),
                  wid(num: 2,col: Colors.orange),
                  wid(num: 3,col: Colors.yellow),
                  wid(num: 4,col: Colors.green),
                  wid(num: 5,col: Colors.teal),
                  wid(num: 6,col: Colors.blue),
                  wid(num: 7,col: Colors.purple),
                ],
              ),
          ),
        ),
      ),
    );
  }
}
