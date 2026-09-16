import 'package:flutter/material.dart';
import 'package:flutterproject/Component/custom_clone_button.dart';
import 'package:flutterproject/Component/custom_divider.dart';
import 'package:flutterproject/Component/custom_terms_text.dart';
import 'package:flutterproject/Component/custom_footer.dart';

class LoginClonePage extends StatelessWidget {
  const LoginClonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
      
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.help_outline, size: 26),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, size: 26),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Log in to TikTok",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 40),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: const [
                    CustomCloneButton(
                      icon: Icons.person_outline,
                      text: "Use phone / email / username",
                    ),
                    SizedBox(height: 12),
                    CustomCloneButton(
                      icon: Icons.facebook,
                      iconColor: Colors.blue,
                      text: "Continue with Facebook",
                    ),
                    SizedBox(height: 12),
                    CustomCloneButton(
                      icon: Icons.g_mobiledata,
                      iconColor: Colors.red,
                      text: "Continue with Google",
                    ),
                    SizedBox(height: 24),
                    CustomDivider(),
                    SizedBox(height: 24),
                    CustomCloneButton(
                      text: "Select account to log in",
                      centerText: true,
                    ),
                    SizedBox(height: 40),
                    CustomTermsText(),
                  ],
                ),
              ),
            ),

            const CustomFooter(),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}