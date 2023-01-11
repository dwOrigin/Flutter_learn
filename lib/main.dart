import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './pages/tabs.dart';
import 'res/Fonts.dart';
import './res/listData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    // final wordPair = WordPair.random();
    return MaterialApp(
      title: "Flutter demo",
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const Tabs(),
    );
  }
}




