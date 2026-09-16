import 'package:flutter/material.dart';

/// Reusable divider dengan teks "or" di tengah,
/// pemisah antara opsi login sosial dan "Select account to log in".
class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: Divider(thickness: 1)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text("or", style: TextStyle(color: Colors.grey)),
        ),
        Expanded(child: Divider(thickness: 1)),
      ],
    );
  }
}