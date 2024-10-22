import 'package:flutter/material.dart';
import 'package:toku_app/colors.dart';
import 'package:toku_app/family_members.dart';
import 'package:toku_app/numbers.dart';
import 'package:toku_app/phrases.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[900],
        title: Text(
          'Tuko',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Categorys(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return numbers();
              }));
            },
            color: Colors.orange,
            text: 'Number',
          ),
          Categorys(
              ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return familyMembers();
              }));
            },
            color: Colors.green,
            text: 'Family Members',
          ),
          Categorys(
            ontap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
                return colors();
              }));
            },
            color: Colors.purple,
            text: 'Colors',
          ),
          Categorys(
            ontap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
                return phrases();
              }));
            },
            color: Colors.blue,
            text: 'Phrases',
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Categorys extends StatelessWidget {
  Categorys({this.color, this.text, this.ontap});
  String? text;
  Color? color;
  Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 16),
        height: 65,
        width: double.infinity,
        color: color,
        child: Text(text!, style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );
  }
}
