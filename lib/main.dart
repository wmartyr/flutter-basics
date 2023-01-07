// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import './text_display.dart';
import './text_control.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const wordList = ["body", "embark", "bus", "sense"];

  int _wordIndex = 0;
  String _buttonText = "Change Text";

  void _changeText() {
    if (_wordIndex < wordList.length - 1) {
      setState(() {
        _wordIndex++;
      });
    } else {
      _restart();
    }
    if (_wordIndex == wordList.length - 1) {
      _buttonText = "Restart";
    }
  }

  void _restart() {
    setState(() {
      _wordIndex = 0;
      _buttonText = "Change Text";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Assignment 1"),
        ),
        body: Column(
          children: [
            TextDisplay(wordList: wordList, wordIndex: _wordIndex),
            TextControl(_changeText, _buttonText),
          ],
        ),
      ),
    );
  }
}
