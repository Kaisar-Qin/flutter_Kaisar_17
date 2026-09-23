import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFields extends StatelessWidget {
  final TextEditingController txtcontroller;
  final String myhint;
  const CustomTextFields({super.key, required this.txtcontroller, required this.myhint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly
      ],
      keyboardType: TextInputType.number,
      controller: txtcontroller,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hintText: myhint,
      ),
    );
  }
}