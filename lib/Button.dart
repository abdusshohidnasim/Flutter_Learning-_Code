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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          TextButton(
            onPressed: () {},
            child: Text("TextButton"),
            style: buttonStyle,
          ),
          ElevatedButton(
            onPressed: () {
              Mysnackbar("I am Elevator Butoon", context);
            },
            child: Icon(Icons.account_balance),
            style: buttonStyle,
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text("Outlinebutton"),
            style: buttonStyle,
          ),
        ],
      ),
    );
  }
}
