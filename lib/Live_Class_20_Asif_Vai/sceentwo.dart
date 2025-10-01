import 'package:flutter/material.dart';

import 'Theartpage.dart';

class Sceentwo extends StatefulWidget {
final String data;
const Sceentwo({super.key, required this.data});

  @override
  State<Sceentwo> createState() => _SceentwoState();
}
class _SceentwoState extends State<Sceentwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 500,
            width: 360,
            color: Colors.yellow,
          ),
          Text(widget.data),
          ElevatedButton(onPressed: (){
           // Navigator.pushReplacement(context,  MaterialPageRoute(builder: (context)=>Theartpage()));
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Theartpage()), ModalRoute.withName("Naiem"));
            
            
            
            
          }, child: Text("Therd page"))
        ],
      ),
    );
  }
}
