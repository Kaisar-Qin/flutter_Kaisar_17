import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String nama;
  final String harga;
  final int rating;
  final String deskripsi;
  final String review;

  const CustomText({
    super.key,
    required this.nama,
    required this.harga,
    required this.rating,
    required this.deskripsi,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          nama,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          "Rp $harga",
          style: const TextStyle(fontSize: 16, color: Colors.green),
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$rating/10", style: const TextStyle(fontSize: 16)),
            const SizedBox(width: 4),
            const Icon(Icons.star, color: Colors.amber, size: 20),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          deskripsi,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.black54),
        ),
        const SizedBox(height: 12),
        Text(
          "Review: $review",
          textAlign: TextAlign.center,
          style: const TextStyle(fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}