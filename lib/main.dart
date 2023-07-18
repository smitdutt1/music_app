
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}
//
//

//
//
//
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('XYLOPHONE APP',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w900
          ),),
        ),
        body: nextpart(),
      ),
    );
  }
}

//
//
//
//

class nextpart extends StatefulWidget {

  @override
  State<nextpart> createState() => _nextpartState();
}



Expanded buildkey({required int numbernote, changedColor = Colors, var textnumber}  ){
  return Expanded(
      child: ElevatedButton(
          onPressed: ()   {
            final player = AudioPlayer();
            player.play(AssetSource('note$numbernote.wav'));
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: changedColor
          ),
          child: Text('note $textnumber',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20.0,
              fontStyle: FontStyle.italic
          )
            ,))
  );
}



class _nextpartState extends State<nextpart> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildkey(numbernote : 1, changedColor: Colors.lightGreenAccent,textnumber: 1 ),
            buildkey(numbernote : 2, changedColor: Colors.green,textnumber: 2),
            buildkey(numbernote : 3, changedColor: Colors.orange,textnumber: 3),
            buildkey(numbernote : 4, changedColor: Colors.yellow,textnumber: 4),
            buildkey(numbernote : 5, changedColor: Colors.purple,textnumber: 5),
            buildkey(numbernote : 6, changedColor: Colors.pink,textnumber: 6),
            buildkey(numbernote : 7, changedColor: Colors.teal,textnumber: 7),
          ],
        ),
      ),
    );
  }
}

