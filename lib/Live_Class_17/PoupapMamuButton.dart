import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomepage());
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => MyHomepageState();
}

class MyHomepageState extends State<MyHomepage> {
  TextEditingController textEditingController = TextEditingController();

  String? selctor;
  List<String> citylist = ["Dhaka","Rajshahi","khulna"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Naiem Hassan Niaem"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body:Column(
          children: [
            PopupMenuButton(itemBuilder: (BuildContext context)=>[
              PopupMenuItem(child:Text("Edit") ),
              PopupMenuItem(child:Text("Delete") ),
              PopupMenuItem(child:Text("Add") ),
              PopupMenuItem(child:Text("Sleacted") ),

            ] ,icon: Icon(Icons.more_horiz)),
            PopupMenuButton(itemBuilder: (BuildContext context)=>[
              PopupMenuItem(child:Text("Edit") ),
              PopupMenuItem(child:Text("Delete") ),
              PopupMenuItem(child:Text("Add") ),
              PopupMenuItem(child:Text("Sleacted") ),

            ] ,)

          ],
        )


    );
  }
}
