import 'package:flutter/material.dart';
import 'package:flutter_larning_class/Live_Class_20_Asif_Vai/sceentwo.dart';

class Theartpage extends StatefulWidget {
  const Theartpage({super.key});

  @override
  State<Theartpage> createState() => _TheartpageState();
}

class _TheartpageState extends State<Theartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: Column(
      children: [
        Container(
          height: 500,
          width: 360,
          color: Colors.yellow,
        ),
        ElevatedButton(onPressed: (){
          Navigator.pushReplacement(context,  MaterialPageRoute(builder: (context)=>Sceentwo(data: 'fj',)));
        }, child: Text("Therd page"))
      ],
    ),
    );
  }
}
