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
  List<String> citylist = ["Dhaka","Rajshahi","khulna"];
  String selecter="Dhaka";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Naiem Hassan Niaem"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                print("one tabe ");

              },
              onDoubleTap: (){
                print("on doule tabe ");
              },
              onTapDown: (detels){
                print("on long preash down");
              },
            ),

          ],
        ),
      ),
    );
  }
}
