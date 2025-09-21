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
        body:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(flex: 3,fit: FlexFit.tight, child: Container(color: Colors.red,)),
            Flexible(flex: 3, fit: FlexFit.tight, child: Text("Naiem ")),
            Flexible(flex: 3, fit: FlexFit.loose, child: Text("Naiem ",style: TextStyle(color: Colors.yellow),)),
            Flexible(flex: 2,fit: FlexFit.loose, child: Container(color: Colors.green,)),

          ],
        )

    );
  }
}
