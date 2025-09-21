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
        body:Wrap(//aita responsib weized
          spacing: 2,
          runSpacing: 2,
          //direction: Axis.vertical, // aita dela lomba lombi thakba

          direction: Axis.horizontal,//aita dan bam thaka suro hoba
          alignment: WrapAlignment.center,// kun khanthak asuro hoba
          children: [
            Container(height: 100,width: 100,color: Colors.blue,),
            Container(height: 100,width: 100,color: Colors.blue,),
            Container(height: 100,width: 100,color: Colors.blue,),
            Container(height: 100,width: 100,color: Colors.blue,),
            Container(height: 100,width: 100,color: Colors.blue,),
          ],
        )

    );
  }
}
