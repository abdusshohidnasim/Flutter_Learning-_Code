import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_larning_class/GridView.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naiem Hassan Naiem")),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(height: 200, width: 300, color: Colors.black),
            SizedBox(height: 10),
            Container(height: 200, width: 300, color: Colors.red),
            SizedBox(height: 10),
            Container(height: 200, width: 300, color: Colors.black),
            SizedBox(height: 10),
            Container(height: 200, width: 300, color: Colors.red),
            SizedBox(height: 10),
            Container(height: 200, width: 300, color: Colors.black),
            SizedBox(height: 10),
            Container(height: 200, width: 300, color: Colors.black),
            SizedBox(height: 10,width: 10,),
            Container(height: 200, width: 300, color: Colors.red),
            SizedBox(height: 10),
            Container(height: 200, width: 300, color: Colors.black),
            SizedBox(height: 10),
            Container(height: 200, width: 300, color: Colors.red),
            SizedBox(height: 10),
            Container(height: 200, width: 300, color: Colors.black),
            SizedBox(height: 10),
            Container(height: 200, width: 300, color: Colors.red),
            SizedBox(height: 10),
            Container(height: 200, width: 300, color: Colors.black),
            SizedBox(height: 10),
            Container(height: 200, width: 300, color: Colors.black),
            SizedBox(height: 10),
            Container(height: 200, width: 300, color: Colors.red),
            SizedBox(height: 10),
            Container(height: 200, width: 300, color: Colors.black),
            SizedBox(height: 10),
            Container(height: 200, width: 300, color: Colors.red),
            SizedBox(height: 10),
            Container(height: 200, width: 300, color: Colors.black),
            SizedBox(height: 10),
            Container(height: 200, width: 300, color: Colors.black),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
