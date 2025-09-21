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
      body: Center(
          child: Container(
            height: 200,
            width: 200,


            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(20),
                color: Colors.amber,
                border: Border.all(
                    color: Colors.black,
                    width: 5
                )
            ),
          )
      ),
    );

  }
}
