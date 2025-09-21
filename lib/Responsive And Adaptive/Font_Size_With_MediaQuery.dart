import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          Text("this page width${width}",style: mysextsylt(context),),
          Text("this page Height${Height}"),
          Text("this page orientation${orientation}",style: mysextsylt(context),),
        ],
      ),
    );
  }
}

TextStyle? mysextsylt(context){

  var width= MediaQuery.of(context).size.width;
  if(width<700){
    return TextStyle(
      color: Colors.yellow,
      fontSize: 30,

    );
  }else {
    return TextStyle(
      color: Colors.cyan,
      fontSize: 60,

    );

  }

}

