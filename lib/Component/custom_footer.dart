import 'package:flutter/material.dart';

class CustomFooter extends StatelessWidget {
  final VoidCallback? onSignUpPressed;

  const CustomFooter({super.key, this.onSignUpPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Don't have an account? ",
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          TextButton(
            onPressed: onSignUpPressed ?? () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              minimumSize: const Size(0, 0),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: const Text(
              "Sign up",
              style: TextStyle(
                color: Colors.pink,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}