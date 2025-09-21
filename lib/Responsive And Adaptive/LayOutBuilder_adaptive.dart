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
        body: LayoutBuilder(builder: (BuildContext context,BoxConstraints constraints){
          if(constraints.maxWidth>600){
            return Container(height: 500,width: 500,color: Colors.yellow,);
          }else{

            return Container(height: 200,width: 200,color: Colors.red,);
          }
        })
    );
  }
}
