import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class numbers extends StatelessWidget {
  const numbers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        backgroundColor: Colors.brown[900],
        title: Text('Numbers', style: TextStyle(color: Colors.white)),
      ),
      body: ListView(
        children: [
          Items(
            image: Image.asset('assets/images/numbers/number_one.png'),
            text1: 'Icha',
            text2: 'One',
            sound: 'sounds/numbers/number_one_sound.mp3',
          ),
          Items(
            image: Image.asset('assets/images/numbers/number_two.png'),
            text1: 'Ni',
            text2: 'Two',
            sound: 'sounds/numbers/number_two_sound.mp3',
          ),
          Items(
            image: Image.asset('assets/images/numbers/number_three.png'),
            text1: 'San',
            text2: 'Three',
            sound: 'sounds/numbers/number_three_sound.mp3',
          ),
          Items(
            image: Image.asset('assets/images/numbers/number_four.png'),
            text1: 'Shi',
            text2: 'Four',
            sound: 'sounds/numbers/number_four_sound.mp3',
          ),
          Items(
            image: Image.asset('assets/images/numbers/number_five.png'),
            text1: 'Go',
            text2: 'Five',
            sound: 'sounds/numbers/number_five_sound.mp3',
          ),
          Items(
            image: Image.asset('assets/images/numbers/number_six.png'),
            text1: 'Roku',
            text2: 'Six',
            sound: 'sounds/numbers/number_six_sound.mp3',
          ),
          Items(
            image: Image.asset('assets/images/numbers/number_seven.png'),
            text1: 'Sebun',
            text2: 'Seven',
            sound: 'sounds/numbers/number_seven_sound.mp3',
          ),
          Items(
            image: Image.asset('assets/images/numbers/number_eight.png'),
            text1: 'Hachi',
            text2: 'Eight',
            sound: 'sounds/numbers/number_eight_sound.mp3',
          ),
          Items(
            image: Image.asset('assets/images/numbers/number_nine.png'),
            text1: 'Kyū',
            text2: 'Nine',
            sound: 'sounds/numbers/number_nine_sound.mp3',
          ),
          Items(
            image: Image.asset('assets/images/numbers/number_ten.png'),
            text1: 'Jū',
            text2: 'Ten',
            sound: 'sounds/numbers/number_ten_sound.mp3',
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
      color: Colors.orange,
      height: 100,
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF6DC),
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
