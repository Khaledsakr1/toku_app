import 'package:flutter/material.dart';
import 'package:toku_app/home_page.dart';

void main() {
  runApp(const toku());
}

class toku extends StatelessWidget {
  const toku({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,

    home: HomePage(),

    );
  }
}
