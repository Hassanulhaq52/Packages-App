import 'package:flutter/material.dart';

class ScreenButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const ScreenButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
