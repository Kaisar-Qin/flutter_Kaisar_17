import 'package:flutter/material.dart';

/// Reusable teks Terms of Service & Privacy Policy
/// yang muncul di bagian bawah form login.
class CustomTermsText extends StatelessWidget {
  const CustomTermsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
        style: TextStyle(color: Colors.grey, fontSize: 12),
        children: [
          TextSpan(text: "By continuing with an account located in "),
          TextSpan(
            text: "Indonesia",
            style: TextStyle(color: Colors.blue),
          ),
          TextSpan(text: ", you agree to our "),
          TextSpan(
            text: "Terms of Service",
            style: TextStyle(color: Colors.blue),
          ),
          TextSpan(text: " and acknowledge that you have read our "),
          TextSpan(
            text: "Privacy Policy",
            style: TextStyle(color: Colors.blue),
          ),
          TextSpan(text: "."),
        ],
      ),
    );
  }
}