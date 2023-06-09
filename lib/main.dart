import 'package:flutter/material.dart';
import 'package:potrtfolio/UI/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('hel');
    return MaterialApp(
      title: 'Usama Sabir',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
