import 'package:flutterproject/pages/confirmreg_page.dart';
import 'package:flutterproject/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  //list variabel nama halaman
  static const String registration="/registration";
  static const String confirm_registration="/confirm_registration";


  static final pages =[
    GetPage(name: registration, page: ()=>RegistrationPage()),
    GetPage(name: confirm_registration, page: ()=>ConfirmregPage()),
  ];
}