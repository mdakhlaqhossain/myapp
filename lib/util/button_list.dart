import 'package:flutter/material.dart';

class ButtonList extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  ButtonList({
    super.key,
    required this.text,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.yellow,
      child: Text(text),
    );
  }
}
