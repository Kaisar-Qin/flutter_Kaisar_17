import 'package:flutterproject/Models/makanan_model.dart';
import 'package:get/get.dart';

class DetailmakananController extends GetxController{
  late String nama;
  late String harga;
  late String gambar;
  late String deskripsi;
  late int rating;
  late String review;

  @override
  void onInit() {
    super.onInit();
    final MakananModel makanan = Get.arguments;
    nama = makanan.namaMakanan;
    harga = makanan.hargaMakanan;
    gambar = makanan.gambarMakanan;
    deskripsi = makanan.deskripsiMakanan;
    rating = makanan.ratingMakanan;
    review = makanan.reviewMakanan;
  }
}