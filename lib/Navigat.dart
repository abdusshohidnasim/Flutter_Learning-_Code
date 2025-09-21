

import 'package:flutter/material.dart';
import 'package:flutter_larning_class/Tapbar.dart';

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
    return Scaffold(
        appBar: AppBar(title: Text("Naiem Hassan Naiem"),),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home1()));
              }, child: Icon(Icons.home,)),
              Text("Got to home Screnn"),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home2()));
              }, child: Text("Home page 2  ")),
              Text("Got to home2 Screnn"),
            ],
          ),
        )

    );
  }
}
class Home1 extends StatelessWidget {
  const Home1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Naiem Hassan Naiem ")),
        body: Center(
          child: Column(
            children: [


              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home2()));
              }, child: Text("Home page 2  ")),

              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Main pa "))
            ],
          ),
        )
    );
  }
}

class Home2 extends StatelessWidget {
  const Home2 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naiem Hassan Naiem "),),
      body: Text("Home2"),
    );
  }
}

