import 'package:get/get.dart';

class ConfirmregController extends GetxController{
  late String nama;
  late String jenis_kelamin;
  late String alamat; 
  late String email;
  late String noWA;
  
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final argument = Get.arguments;
    nama = argument['name'];
    jenis_kelamin = argument['jenis_kelamin'];
    alamat = argument['alamat'];
    email = argument['email'];
    noWA = argument['no_wa'];
  }
}