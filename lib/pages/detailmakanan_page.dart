import 'package:flutter/material.dart';
import 'package:flutterproject/Component/custom_text.dart';
import 'package:flutterproject/Component/cutom_gambar_bulat.dart';
import 'package:flutterproject/Controller/detailmakanan_controller.dart';
import 'package:get/get.dart';

class DetailmakananPage extends StatelessWidget {
 DetailmakananPage({super.key});

  final controller = Get.put(DetailmakananController());

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
                CustomGambarBulat(url: controller.gambar, ukuran: 200),
                SizedBox(height: 16),
                CustomText(
                  nama: controller.nama,
                  harga: controller.harga,
                  rating: controller.rating,
                  deskripsi: controller.deskripsi,
                  review: controller.review,
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