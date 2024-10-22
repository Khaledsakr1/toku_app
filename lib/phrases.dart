import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class phrases extends StatelessWidget {
  const phrases({super.key});

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
          text1: 'Kimasu ka',
          text2: 'Are You Coming',
          sound: 'sounds/phrases/are_you_coming.wav',
          ),
          Items(
          text1: 'Kōdoku suru koto o wasurenaide kudasai',
          text2: 'Dont Forget To Subscribe',
          sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
          ),
          Items(
          text1: 'Kibun wa dōdesu ka',
          text2: 'How Are You Feel',
          sound: 'sounds/phrases/how_are_you_feeling.wav', 
          ),
          Items(
          text1: 'Watashi wa anime ga daisukidesu',
          text2: 'I Love Anime',
          sound: 'sounds/phrases/i_love_anime.wav',  
          ),
          Items(
          text1: 'Watashi wa puroguramingu ga daisukidesu',
          text2: 'I Love Programming',
          sound: 'sounds/phrases/i_love_programming.wav',  
          ),
          Items(
          text1: 'Puroguramingu wa kantandesu',
          text2: 'Programming Is Easy',
          sound: 'sounds/phrases/programming_is_easy.wav',  
          ),
          Items(
          text1: 'Anata no namae wa nandesuka',
          text2: 'What Is Your Name',
          sound: 'sounds/phrases/what_is_your_name.wav', 
          ),
          Items(
          text1: 'Nanishiteruno',
          text2: 'What Are You Doing',
          sound: 'sounds/phrases/where_are_you_going.wav', 
          ),
          Items(
          text1: 'Hai, ikimasu',
          text2: 'Yes Im Coming',
          sound: 'sounds/phrases/yes_im_coming.wav', 
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Items extends StatelessWidget {
  Items({this.text1, this.text2 , this.sound});
  String? text1;
  String? text2;
  String? sound;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 100,
      child: Row(
        children: [
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