import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const new({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        centerTitle: true,
        ),
        body: Column(
          children:[
            Row(
              children: [
                Expanded(
                child:TextField(
                  decoration: InputDecoration(hintText: "Input Angka 1",border:OutlineInputBorder()),
                  ),
                ),
                 Expanded(
                   child: TextField(
                     decoration: InputDecoration(hintText: "Input Angka 2",border: OutlineInputBorder()),
                    ),
                 ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){}, child: Text("+")),
                ElevatedButton(onPressed: (){}, child: Text("-")),
                ElevatedButton(onPressed: (){}, child: Text("x")),
                ElevatedButton(onPressed: (){}, child: Text("/")),
              ],
            ),
             Container(
            margin: EdgeInsets.all(10),  
            child: 
             Text("Hasil")),
            ElevatedButton(onPressed: (){}, child: Text("Reset")),
          ],
        ),
    );
  }
}