import 'package:flutter/material.dart';

class Y2KButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const Y2KButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(50)),
      child: Text(text),
    );
  }
}
