import 'package:flutter/material.dart';
import 'package:flutterproject/Controller/homepage_controller.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
 Homepage({super.key});

  final controller = Get.put(HomepageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("List Makanan"),),
    body: Container(
    margin: EdgeInsets.all(10),
    child: Obx(() => 
    SizedBox( height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.listMakanan.length,
        itemBuilder: (context, index){
          final makanan =controller.listMakanan[index];
           return SizedBox(
                        width: 250,
                        child: Card( elevation: 10,
                         child: ListTile(
                         title: Text(makanan.namaMakanan),
                         subtitle: Text(makanan.hargaMakanan),
                         leading: Image.network(makanan.gambarMakanan)),
                       ),
                       );
          }),
        )
      )
      )
    );
  }
}