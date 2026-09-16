import 'package:flutter/material.dart';

class LoginClone extends StatefulWidget {
  const LoginClone({super.key});

  @override
  State<LoginClone> createState() => _LoginCloneState();
}

class _LoginCloneState extends State<LoginClone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Header: icon tanda tanya & tombol close
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

            // Judul
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
                  children: [
                    _pillButton(
                      icon: Icons.person_outline,
                      text: "Use phone / email / username",
                    ),
                    const SizedBox(height: 12),
                    _pillButton(
                      icon: Icons.facebook,
                      iconColor: Colors.blue,
                      text: "Continue with Facebook",
                    ),
                    const SizedBox(height: 12),
                    _pillButton(
                      icon: Icons.g_mobiledata,
                      iconColor: Colors.red,
                      text: "Continue with Google",
                    ),

                    const SizedBox(height: 24),

                    // Divider "or"
                    Row(
                      children: const [
                        Expanded(child: Divider(thickness: 1)),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text("or", style: TextStyle(color: Colors.grey)),
                        ),
                        Expanded(child: Divider(thickness: 1)),
                      ],
                    ),

                    const SizedBox(height: 24),

                    _pillButton(
                      text: "Select account to log in",
                      centerText: true,
                    ),

                    const SizedBox(height: 40),

                    // Teks Terms & Privacy
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: const TextStyle(color: Colors.grey, fontSize: 12),
                        children: [
                          const TextSpan(text: "By continuing with an account located in "),
                          TextSpan(
                            text: "Indonesia",
                            style: const TextStyle(color: Colors.blue),
                          ),
                          const TextSpan(text: ", you agree to our "),
                          TextSpan(
                            text: "Terms of Service",
                            style: const TextStyle(color: Colors.blue),
                          ),
                          const TextSpan(text: " and acknowledge that you have read our "),
                          TextSpan(
                            text: "Privacy Policy",
                            style: const TextStyle(color: Colors.blue),
                          ),
                          const TextSpan(text: "."),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Footer: Sign up (pakai TextButton)
            Container(
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
                    onPressed: () {},
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
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  Widget _pillButton({
    IconData? icon,
    Color iconColor = Colors.black,
    required String text,
    bool centerText = false,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: OutlinedButton(
        onPressed: () {},
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