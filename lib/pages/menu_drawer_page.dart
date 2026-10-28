import 'package:flutter/material.dart';
import 'package:flutterproject/Controller/menu_drawer_controller.dart';
import 'package:get/get.dart';

class MenuDrawerPage extends StatelessWidget {
  MenuDrawerPage({super.key});

  final menuDrawerController = Get.put(MenuDrawerController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: IndexedStack(
          index: menuDrawerController.selectedIndex.value,
          children: menuDrawerController.listPages,
        ),
        appBar: AppBar(),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.home_outlined),
                title: Text("Home"),
                onTap: () {
                  menuDrawerController.changePage(0);
                  Get.back();
                },
              ),
              ListTile(
                leading: Icon(Icons.history_outlined),
                title: Text("History"),
                onTap: () {
                  menuDrawerController.changePage(1);
                  Get.back();
                },
              ),
              ListTile(
                leading: Icon(Icons.person_2_outlined),
                title: Text("Profile"),
                onTap: () {
                  menuDrawerController.changePage(2);
                  Get.back();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
