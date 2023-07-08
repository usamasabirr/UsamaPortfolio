import 'package:flutter/widgets.dart';
import 'package:potrtfolio/UI/HomePage.dart';
import 'package:potrtfolio/UI/MobileHome.dart';
import 'package:potrtfolio/UI/mobile_project_detail.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1000) {
          return MobileHome();
        } else {
          return MobileHome();
        }
      },
    );
  }
}
