import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButtons({
    super.key, 
    required this.text, 
    required this.onPressed,child
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), 
        ),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
