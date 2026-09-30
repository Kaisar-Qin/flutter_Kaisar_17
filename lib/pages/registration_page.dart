import 'package:flutter/material.dart';
import 'package:flutterproject/Component/custom_button.dart';
import 'package:flutterproject/Component/custom_dropdown.dart';
import 'package:flutterproject/Component/custom_textfield.dart';
import 'package:flutterproject/Component/custom_textflied.dart';
import 'package:flutterproject/routes.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtNoWA = TextEditingController();
    final selectedGender = Rxn<String>();
    return Scaffold(
      appBar: AppBar(title: Text("Registration Page"),),
      body: Column(
        children: [
          CustomTextfield(txtcontroller: txtNama, myhint: "input nama"),
          CustomTextfield(txtcontroller: txtAlamat, myhint: "input alamat"),
          CustomTextfield(txtcontroller: txtEmail, myhint: "input email"),
          CustomTextFields(txtcontroller: txtNoWA, myhint: "input no wa"),
          Obx(()=> CustomDropdown(
            label: "Jenis Kelamin", 
            items: const ["Laki-laki","Perempuan"],
           value: selectedGender.value, 
           onChanged: (val)=> selectedGender.value = val,
           ),
          ),
          CustomButtons(text: "Send",onPressed: () {
            Get.toNamed(
              Routes.confirm_registration,
              arguments:{
                'name': txtNama.text.toString(),
                'jenis_kelamin': selectedGender.value??"",
                'alamat': txtAlamat.text.toString(),
                'email': txtEmail.text.toString(),
                'no_wa': txtNoWA.text.toString(),
                },
            );
          },
          child: Text("Send"),
          ),
        ],
      ),
    );
  }
}