import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
  ));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final PageController ctrl = PageController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: PageView(
        scrollDirection: Axis.horizontal,
        controller: ctrl,
        children: [
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.cyan,
          ),
          Container(
            color: Colors.amber,
          ),
        ],
      )),
    );
  }
}
