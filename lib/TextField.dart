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


  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.deepOrange,

  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(decoration: InputDecoration(
                label: Text("Frist Name"),
                border: OutlineInputBorder()
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(decoration: InputDecoration(
                label: Text("Last Name"),
                border: OutlineInputBorder()
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(cursorColor: Colors.blue, decoration: InputDecoration(

                label: Text("Email Address"),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue,width: 2),
                )

            ),),
          ),
          Padding(padding: EdgeInsets.all(15),
            child: ElevatedButton(onPressed: (){}, child: Text("Submit"),style: buttonStyle,),
          )
        ],
      ),
    );
  }
}
