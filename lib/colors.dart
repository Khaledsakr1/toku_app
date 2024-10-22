import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class colors extends StatelessWidget {
  const colors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        backgroundColor: Colors.brown[900],
        title: Text('Colors', style: TextStyle(color: Colors.white)),
      ),
      body: ListView(
        children: [
          Items(
          image: Image.asset('assets/images/colors/color_black.png'),
          text1: 'Kuro',
          text2: 'Black',
          sound: 'sounds/colors/black.wav',
          ),
          Items(
          image: Image.asset('assets/images/colors/color_brown.png'),
          text1: 'Chairo',
          text2: 'Brown',
          sound: 'sounds/colors/brown.wav',
          ),
          Items(
          image: Image.asset('assets/images/colors/color_dusty_yellow.png'),
          text1: 'Dasutiierō',
          text2: 'Dusty Yellow',
          sound: 'sounds/colors/dusty yellow.wav', 
          ),
          Items(
          image: Image.asset('assets/images/colors/color_gray.png'),
          text1: 'Gurē',
          text2: 'Gray',
          sound: 'sounds/colors/gray.wav',  
          ),
          Items(
          image: Image.asset('assets/images/colors/color_green.png'),
          text1: 'Midori',
          text2: 'Green',
          sound: 'sounds/colors/green.wav',  
          ),
          Items(
          image: Image.asset('assets/images/colors/color_red.png'),
          text1: 'Aka',
          text2: 'Red',
          sound: 'sounds/colors/red.wav',  
          ),
          Items(
          image: Image.asset('assets/images/colors/color_white.png'),
          text1: 'Shiro',
          text2: 'White',
          sound: 'sounds/colors/white.wav', 
          ),
          Items(
          image: Image.asset('assets/images/colors/yellow.png'),
          text1: 'Kiiro',
          text2: 'Yellow',
          sound: 'sounds/colors/yellow.wav', 
          ),
          
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Items extends StatelessWidget {
  Items({this.image, this.text1, this.text2 , this.sound});
  String? text1;
  String? text2;
  String? sound;
  var image;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      height: 100,
      child: Row(
        children: [
          Container(
            color: Colors.white,
            child: image,
          ),
           
             Padding(
               padding: EdgeInsets.only(left: 10),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(text1!, style: TextStyle(color: Colors.white)),
                  Text(text2!, style: TextStyle(color: Colors.white)),
                ],
              ),
             ),
          
          Spacer(flex: 1),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(sound!));
              },
              icon: Icon(
                color: Colors.white,
                Icons.play_arrow,
              ),
            ),
          ),
        ],
      ),
    );
  }
}