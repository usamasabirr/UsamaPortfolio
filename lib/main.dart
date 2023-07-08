import 'package:flutter/material.dart';
import 'package:potrtfolio/UI/Home.dart';
import 'package:potrtfolio/UI/mobile_project_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Usama Sabir',
      debugShowCheckedModeBanner: false,
      home: MobileProjectDetail(),
    );
  }
}
