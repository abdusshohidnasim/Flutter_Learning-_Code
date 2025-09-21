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
  Mysnackbar(Massage,context){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(Massage))
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){Mysnackbar("I am Snackbar",context);}, icon: Icon(Icons.add),),
          IconButton(onPressed: (){Mysnackbar("I am Snackbar",context);}, icon: Icon(Icons.add_a_photo),),
          IconButton(onPressed: (){Mysnackbar("I am Snackbar",context);}, icon: Icon(Icons.javascript),),
          IconButton(onPressed: (){Mysnackbar("I am Snackbar",context);}, icon: Icon(Icons.join_full),),
        ],
      ),

    );
  }
}
