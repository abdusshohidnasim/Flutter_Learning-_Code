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
        body: Stack(
          alignment: Alignment(1.2, 1.6),
          // alignment: Alignment.center

          children: [
            Container(
              height: 400,
              width: 400,

              color: Colors.cyan,
            ),
            Container(height: 300,width: 300,color: Colors.cyanAccent,),
            Container(color: Colors.deepOrange,height: 200,width: 200,
              child: Icon(Icons.scale,color: Colors.cyanAccent,),)
          ],

        )
    );
  }
}
