import 'package:flutter/material.dart';
import 'package:flutter_larning_class/Live_Class_20_Asif_Vai/Navigator_push.dart';
import 'package:flutter_larning_class/Live_Class_20_Asif_Vai/sceentwo.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            width: 460,
            color: Colors.black,
            // child: ElevatedButton(onPressed: (){
            //   //Navigator.push(context, MaterialPageRoute(builder: (context)=>Sceentwo()));
            // }, child: Text("Go To Sceen 2")),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                //  Navigator.pushNamed(context, "/Secend",arguments: (ScreenAruments("Helllo Naiem ")));
              },
              child: Text("route babohar kora navigat kora "),
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Secend");
              },
              child: Text("route babohar kora navigat kora "),
            ),
          ),
        ],
      ),
    );
  }
}

class ScreenArume {}
