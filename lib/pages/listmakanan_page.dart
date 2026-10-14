import 'package:flutter/material.dart';
import 'package:flutterproject/Controller/listmakanan_controller.dart';
import 'package:flutterproject/routes.dart';
import 'package:get/get.dart';

class ListmakananPage extends StatelessWidget {
 ListmakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar:AppBar(title: Text("List Makanan"),),
    body: Container(
    margin: EdgeInsets.all(10),
    child: Obx(() => 
    ListView.builder(
      itemCount: controller.listMakanan.length,
      itemBuilder: (context, index){
        final makanan =controller.listMakanan[index];
         return Dismissible(
                key: ValueKey(makanan.namaMakanan),
                direction: DismissDirection.endToStart,
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
                child: InkWell(
                onTap: () {
               Get.toNamed(
              Routes.detail_makanan,
              arguments: makanan,
            );
          },
          child: Card( elevation: 10,
            child: ListTile(
            title: Text(makanan.namaMakanan),
            subtitle: Text(makanan.hargaMakanan),
            trailing: Icon(Icons.arrow_back_ios)),
          ),
          )
         );
        })
      )
    )
  );
  }
}