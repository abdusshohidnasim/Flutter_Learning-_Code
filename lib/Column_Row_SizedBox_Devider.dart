import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Hoamepage());
  }
}

class Hoamepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            text: "Naiem Hassan Naiem ",
            style: TextStyle(fontSize: 30),
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Expanded(
        child: Container(

          child: Column(



            children: [
              Container(height: 100, width: 100, color: Colors.black),
              Divider(color: Colors.cyan,thickness: 5,),
              SizedBox(width: 10,height: 10,),
              Container(height: 100, width: 100, color: Colors.black),
              Divider(color: Colors.black,thickness: 5,),
              SizedBox(width: 10,height: 10,),
              Container(height: 100, width: 100, color: Colors.black),
              SizedBox(width: 10,height: 10,),
              Divider(color: Colors.black,thickness: 5,),
            ],
          ),
        ),
      ),
    );
  }
}
