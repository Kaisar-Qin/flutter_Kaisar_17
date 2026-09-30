import 'package:flutter/material.dart';
import 'package:flutterproject/routes.dart';
//import 'package:flutterproject/pages/kalkulator_pages.dart';
import 'package:get/get_navigation/get_navigation.dart';
//import 'package:flutterproject/kalkulator_page.dart';
//import 'package:flutterproject/login_clone.dart';
//import 'package:flutterproject/login_page.dart';
import 'package:flutterproject/pages/login_clone_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //home :KalkulatorPages(),
      title: 'My Learning App',
      initialRoute: Routes.registration,
      getPages: Routes.pages,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      //home: LoginPage(),
      //home: LoginClone(),
      //home : KalkulatorPage(),
      //home : LoginClonePage(),
     
    );
  }
}
