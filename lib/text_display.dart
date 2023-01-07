import 'package:flutter/material.dart';

class TextDisplay extends StatelessWidget {
  const TextDisplay({
    Key? key,
    required this.wordList,
    required int wordIndex,
  })  : _wordIndex = wordIndex,
        super(key: key);

  final List<String> wordList;
  final int _wordIndex;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        wordList[_wordIndex],
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
