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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,fixedColor: Colors.blue,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Hoame"),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_off),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: "Account",
          ),
        ],
        onTap: (int index){if(index ==0){
          Mysnackbar("I am a home bottom Navigaton Bar ", context);
        }else if(index==1){
          Mysnackbar("I am Profile navigation Bar ", context);
        }
        else{
          Mysnackbar("I am Account navigation Bar", context);
        }

        },
      ),
    );
  }
}
