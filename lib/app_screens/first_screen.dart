import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text('My First Project'),),
      body: Material(
        color: Colors.redAccent,
        child: Center(
          child: Text(
            randomNumber(),
            textDirection: TextDirection.ltr,
            style: const TextStyle( color: Colors.white, fontSize: 40.0),
          ),
        ) ,
      ),
    );
  }
  String randomNumber() {

    var generateNumber = Random();
    int number = generateNumber.nextInt(50);

    return "Your number is $number";
  }
}


