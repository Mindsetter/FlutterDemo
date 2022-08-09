import 'package:demo_2/app_screens/first_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp( const MyFlutterApp() );


class MyFlutterApp extends StatelessWidget {
  const MyFlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      home: FirstScreen()
    );
  }
}
