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
    final argument = Get.arguments;
    nama = argument['nama'];
    harga = argument['harga'];
    gambar = argument['gambar'];
    deskripsi = argument['deskripsi'];
    rating = argument['rating'];
    review = argument['review'];
  }
}