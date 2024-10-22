import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class familyMembers extends StatelessWidget {
  const familyMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        backgroundColor: Colors.brown[900],
        title: Text('Family Members', style: TextStyle(color: Colors.white)),
      ),
      body: ListView(
        children: [
          Items(
          image: Image.asset('assets/images/family_members/family_father.png'),
          text1: 'Chichioya',
          text2: 'Father',
          sound: 'sounds/family_members/father.wav',
          ),
          Items(
          image: Image.asset('assets/images/family_members/family_mother.png'),
          text1: 'Hahaoya',
          text2: 'Mother',
          sound: 'sounds/family_members/mother.wav', 
          ),
          Items(
           image: Image.asset('assets/images/family_members/family_grandfather.png'),
           text1: 'Sofu',
           text2: 'Grand Father',
           sound: 'sounds/family_members/grand father.wav',
          ),
          Items(
           image: Image.asset('assets/images/family_members/family_grandmother.png'),
           text1: 'Sobo',
           text2: 'Grand Mother',
           sound: 'sounds/family_members/grand mother.wav', 
          ),
          Items(
          image: Image.asset('assets/images/family_members/family_older_brother.png'),
          text1: 'Ani',
          text2: 'Older Brother',
          sound: 'sounds/family_members/older bother.wav',  
          ),
          Items(
          image: Image.asset('assets/images/family_members/family_older_sister.png'),
          text1: 'Ane',
          text2: 'Older Sister',
          sound: 'sounds/family_members/older sister.wav',  
          ),
          Items(
          image: Image.asset('assets/images/family_members/family_younger_brother.png'),
          text1: 'Otōto', 
          text2: 'Younger Brother',
          sound: 'sounds/family_members/younger brohter.wav', 
          ),
          Items(
          image: Image.asset('assets/images/family_members/family_younger_sister.png'),
          text1: 'Imōto',
          text2: 'Younger Sister', 
          sound: 'sounds/family_members/younger sister.wav', 
          ),
          Items(
          image: Image.asset('assets/images/family_members/family_son.png'),
          text1: 'Musuko',
          text2: 'Son',
          sound: 'sounds/family_members/son.wav',  
          ),
          Items(
          image: Image.asset('assets/images/family_members/family_daughter.png'),
          text1: 'Musume',
          text2: 'Daughter', 
          sound: 'sounds/family_members/daughter.wav', 
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
      color: Colors.green,
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
