import 'dart:ffi';

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
  Mysnackbar(Massage, context) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(Massage)));
  }

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.blue,
    padding: EdgeInsets.all(40),
    foregroundColor: Colors.deepOrange,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
    ),
  );
  MyalartDilod(context){
    return showDialog(context: context, builder: (BuildContext context){
      return Expanded(child: AlertDialog( title: Text("Aleart !"),
        content: Text("Do you onted to delete "),
        actions: [
          TextButton(onPressed: (){
            Mysnackbar("Delete Sucess", context);
            Navigator.of(context).pop();}, child: Text("Yes")),
          TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("NO"))
        ],
      ));
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          ElevatedButton(onPressed: (){MyalartDilod(context);}, child: Icon(Icons.home)),
        ],
      ),
    );
  }
}
