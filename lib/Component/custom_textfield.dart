import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController txtcontroller;
  final String myhint;

  const CustomTextfield({
    super.key, 
    required this.txtcontroller, 
    required this.myhint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtcontroller,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hint: Text(myhint),
      ),
    );
  }
}