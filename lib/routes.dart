import 'package:flutterproject/pages/confirmreg_page.dart';
import 'package:flutterproject/pages/detailmakanan_page.dart';
import 'package:flutterproject/pages/listmakanan_page.dart';
import 'package:flutterproject/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  //list variabel nama halaman
  static const String registration="/registration";
  static const String confirm_registration="/confirm_registration";
  static const String list_makanan="/list_makanan";
  static const String detail_makanan="/detail_makanan";


  static final pages =[
    GetPage(name: registration, page: ()=>RegistrationPage()),
    GetPage(name: confirm_registration, page: ()=>ConfirmregPage()),
    GetPage(name: list_makanan, page: ()=>ListmakananPage()),
    GetPage(name: detail_makanan, page: ()=>DetailmakananPage()),
  ];
}