import 'package:flutter/material.dart';

class CustomCloneButton extends StatelessWidget {
  final IconData? icon;
  final String? symbol;
  final Color iconColor;
  final String text;
  final bool centerText;
  final VoidCallback? onPressed;

  const CustomCloneButton({
    super.key,
    this.icon,
    this.symbol,
    this.iconColor = Colors.black,
    required this.text,
    this.centerText = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: OutlinedButton(
        onPressed: onPressed ?? () {},
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.grey[200],
          side: BorderSide.none,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
        ),
        child: Row(
          mainAxisAlignment:
              centerText ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: [
            if (icon != null) ...[
              Icon(icon, color: iconColor, size: 22),
              const SizedBox(width: 16),
            ]else if (symbol != null) ...[
              Text(
                symbol!,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 16),
            ],
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}