import 'package:flutter/material.dart';

class CustomGambarBulat extends StatelessWidget {
  final String url;
  final double ukuran;

  const CustomGambarBulat({
    super.key,
    required this.url,
    this.ukuran = 150,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
        url,
        width: ukuran,
        height: ukuran,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => Container(
          width: ukuran,
          height: ukuran,
          color: Colors.grey[300],
          child: Icon(Icons.broken_image, size: ukuran / 2),
        ),
      ),
    );
  }
}