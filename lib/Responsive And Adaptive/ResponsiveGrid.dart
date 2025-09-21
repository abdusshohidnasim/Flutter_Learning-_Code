import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

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
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var Height = MediaQuery.of(context).size.width;
    var orientation = MediaQuery.of(context).orientation;

    return Scaffold(
        appBar: AppBar(title: Text("Naiem Hassan Naiem")),
        body:ResponsiveGridRow(children: [
          ResponsiveGridCol(lg: 4,md: 6,sm: 12, child: Container(height: 100,color: Colors.red,)),
          ResponsiveGridCol(lg: 4,md: 6,sm: 12, child: Container(height: 100,color: Colors.green,)),
          ResponsiveGridCol(lg: 4,md: 6,sm: 12, child: Container(height: 100,color: Colors.pink,)),
          ResponsiveGridCol(lg: 4,md: 6,sm: 12, child: Container(height: 100,color: Colors.yellow,)),
          ResponsiveGridCol(lg: 4,md: 6,sm: 12, child: Container(height: 100,color: Colors.black,)),
          ResponsiveGridCol(lg: 4,md: 6,sm: 12, child: Container(height: 100,color: Colors.cyan,)),
        ])
    );
  }
}
