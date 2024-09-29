import 'package:flutter/material.dart';

class BasicAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double? height;
  const BasicAppButton(
      {required this.text, required this.onPressed, this.height, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height ?? 80.0),
      ),
      child: Text(text),
    );
  }
}
