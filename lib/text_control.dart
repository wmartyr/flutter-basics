import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback onPressedfunction;
  final String buttonText;

  const TextControl(this.onPressedfunction, this.buttonText, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressedfunction,
      child: Text(buttonText),
    );
  }
}
