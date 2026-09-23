import 'package:flutter/material.dart';
import 'package:flutterproject/Component/custom_clone_button.dart';
import 'package:flutterproject/Component/custom_textflied.dart';
import 'package:flutterproject/Controller/kalkulator_controller.dart';
import 'package:get/get.dart';

class KalkulatorPages extends StatelessWidget {
  KalkulatorPages({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtAngka1 =TextEditingController();
    TextEditingController txtAngka2 =TextEditingController();
    return Scaffold(
      appBar:AppBar(title: Text("Kalkulator")),
      body: Column
      (children: [
        CustomTextFields(txtcontroller: txtAngka1, myhint: "Input Angka 1"),
        CustomTextFields(txtcontroller: txtAngka2, myhint: "Input Angka 2"),
        CustomCloneButton(symbol: "+", text: "Tambah", onPressed: (){
          double angka1 = double.parse(txtAngka1.text);
          double angka2 = double.parse(txtAngka2.text);
          controller.tambah(angka1, angka2);
        }),
        CustomCloneButton(symbol: "-", text: "Kurang", onPressed: (){
          double angka1 = double.parse(txtAngka1.text);
          double angka2 = double.parse(txtAngka2.text);
          controller.kurang(angka1, angka2);
        }),
        CustomCloneButton(symbol: "*", text: "Kali", onPressed: (){
          double angka1 = double.parse(txtAngka1.text);
          double angka2 = double.parse(txtAngka2.text);
          controller.kali(angka1, angka2);
        }),
        CustomCloneButton(symbol: "/", text: "Bagi", onPressed: (){
          double angka1 = double.parse(txtAngka1.text);
          double angka2 = double.parse(txtAngka2.text);
          controller.bagi(angka1, angka2);
        }),
        Obx(() => Text(controller.hasil.toString(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)) 
      ],
      ),
    );
  }
}