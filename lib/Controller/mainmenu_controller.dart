import 'package:flutter/material.dart';
import 'package:flutterproject/Menu/history_page.dart';
import 'package:flutterproject/Menu/home_page.dart';
import 'package:flutterproject/Menu/profile_page.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController{
  final RxInt selectedIndex = 0.obs;  

  void changePage(int index){
    selectedIndex.value = index;
  }

  List<Widget> listPages=[
    Homepage(),
    Historypage(),
    Profilepage()
 ];
}