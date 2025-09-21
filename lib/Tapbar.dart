import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
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
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Naiem Hassan Naiem"),
          bottom: TabBar(
            isScrollable: true,

            tabs: [
              Tab(icon: Icon(Icons.home), text: "Hoome"),
              Tab(icon: Icon(Icons.search), text: "search"),
              Tab(icon: Icon(Icons.person), text: "person"),
              Tab(icon: Icon(Icons.pages), text: "pages"),
              Tab(icon: Icon(Icons.account_balance), text: "Account"),
              Tab(icon: Icon(Icons.message), text: "MMessage"),
              Tab(icon: Icon(Icons.join_inner_rounded), text: "joni"),
              Tab(icon: Icon(Icons.navigate_before), text: "Navigate"),
            ],
          ),
        ),
        body: TabBarView(children: [
          home(),
          home2(),
          home3(),
          home4(),
          home5(),
          home6(),
          home8(),
          home7(),


        ]),
      ),
    );
  }
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text("This is hoem ")));
  }
}

class home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text("This is hoem ")));
  }
}

class home3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text("This is hoem ")));
  }
}

class home4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text("This is hoem ")));
  }
}

class home5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text("This is hoem ")));
  }
}

class home6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text("This is hoem ")));
  }
}

class home7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text("This is hoem ")));
  }
}

class home8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text("This is hoem8 ")));
  }
}
