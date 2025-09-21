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
    return MaterialApp(debugShowCheckedModeBanner: false, home: Hoamepage());
  }
}

class Hoamepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Row(
          children: [
            Flexible(flex: 1,
              fit:FlexFit.tight,// aita pora tuko jaiga neba
              child: Container(
                height: 100,
                color: Colors.blue,
              ),
            ),
            SizedBox(width: 10,),
            Flexible(
              flex: 1,
              fit: FlexFit.loose,// ai ta joto toko jaiga lagbo oto tokoi nebo
              child: Text("Naiem "),

            ),
            SizedBox(width: 10,),

            Flexible(
              flex: 1,
              child: Container(
                height: 100,
                color: Colors.blue,
              ),
            ),
            SizedBox(width: 10,),

          ],
        ));
  }
}
