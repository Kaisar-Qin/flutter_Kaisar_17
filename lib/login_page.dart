import 'package:flutter/material.dart';
import 'package:flutterproject/Component/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    TextEditingController txtUsername = TextEditingController(); 
    TextEditingController txtPassword = TextEditingController(); 
    String statuslogin ="";
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar :AppBar(
        title: Text('Login Page')),
      body :Column(
        children:[
          Text("Welcome to Application,"+statuslogin,style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 107, 29, 103),fontStyle:FontStyle.italic),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              txtcontroller: txtUsername,
              myhint: "Input Username",
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              txtcontroller: txtPassword,
              myhint: "Input Password",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            ElevatedButton(onPressed: (){
              setState(() {
                String username = txtUsername.text.toString();
                String password = txtPassword.text.toString();
                if (username =="admin" && password == "admin"){
                  print ("Sukses Login");
                  statuslogin = "Sukses";
                }else{
                  print ("Gagal Login");
                  statuslogin = "Gagal";
                }
              });
            }, child: Text("Login")),
            ElevatedButton(onPressed: (){}, child: Text("Register")),
          ],
          ),
        ],
      ),
    );
  }
}