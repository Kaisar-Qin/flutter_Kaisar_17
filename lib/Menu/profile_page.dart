import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile"),),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 24),
            Stack(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHpCaYu-fv6aWwXOkJ19eWJh8J6Mx9DrGXKEv3ojKmqw8Cv9pscK-rB-Z5&s=10"),
                ),
                Positioned(
                  bottom:0, 
                  right: 0,
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.green,
                    child: Icon(Icons.camera_alt_outlined, color: Colors.black,),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
            ListTile(
              leading: Icon(Icons.person_outline),
              title: Text("Name"),
              subtitle: Text("Your Name"),
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text("About"),
              subtitle: Text("Set About",style: TextStyle(color: Colors.green),),
            ),
             ListTile(
              leading: Icon(Icons.alternate_email_outlined),
              title: Text("Username"),
              subtitle: Text("Reserve Username",style: TextStyle(color: Colors.green),),
            ), ListTile(
              leading: Icon(Icons.phone_outlined),
              title: Text("Phone"),
              subtitle: Text("+62 800-000-000"),
            ), ListTile(
              leading: Icon(Icons.link_outlined),
              title: Text("Links"),
              subtitle: Text("Add links",style: TextStyle(color: Colors.green),),
            ),
          ],
        ),
      ),  
    );
  }
}