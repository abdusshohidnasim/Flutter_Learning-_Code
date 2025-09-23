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
            DropdownButton(
                value: selctor,
                hint: Text("Sleactec a ooption"),
                items: citylist.map((String item){
                  return DropdownMenuItem<String>(value: item, child: Text(item));
                }).toList(), onChanged: (String? newvalu){
              setState(() {
                selctor=newvalu;
              });
            })
          ],
        )


    );
  }
}
