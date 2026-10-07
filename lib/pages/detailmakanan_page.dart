import 'package:flutter/material.dart';
import 'package:flutterproject/Component/custom_text.dart';
import 'package:flutterproject/Component/cutom_gambar_bulat.dart';
import 'package:flutterproject/Models/makanan_model.dart';
import 'package:get/get.dart';

class DetailmakananPage extends StatelessWidget {
 DetailmakananPage({super.key});

  final MakananModel makanan = Get.arguments as MakananModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Makanan"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2)),
            child: Column(
              children:[
                CustomGambarBulat(url: makanan.gambarMakanan, ukuran: 200),
                SizedBox(height: 16),
                SizedBox(height: 16),
                CustomText(
                  nama: makanan.namaMakanan,
                  harga: makanan.hargaMakanan,
                  rating: makanan.ratingMakanan,
                  deskripsi: makanan.deskripsiMakanan,
                  review: makanan.reviewMakanan,
                ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}