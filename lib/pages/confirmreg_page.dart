import 'package:flutter/material.dart';
import 'package:flutterproject/Component/custom_button.dart';
import 'package:flutterproject/Controller/confirmreg_controller.dart';
import 'package:get/get.dart';

class ConfirmregPage extends StatelessWidget {
   ConfirmregPage({super.key});


  final controller = Get.put(ConfirmregController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Confirm Registration"),),
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
          Text(
            "Nama ${controller.nama}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),
          Text(
            "Jenis Kelamin ${controller.jenis_kelamin}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),
          Text(
            "Alamat ${controller.alamat}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),
          Text(
            "Email ${controller.email}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),
          Text(
            "No WA ${controller.noWA}",
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),
                ],
              ),
            ),
          CustomButtons(text: "Oke", onPressed: (){
            Get.back();
          },
          child: Text("Oke"),
         ),
          ],
        ),
      ),
    );
  }
}