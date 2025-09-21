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
  Mysnackbar(Massage, context) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(Massage)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Mysnackbar("I am Floating ActioButton ", context);
        },
        elevation: 10,
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}
