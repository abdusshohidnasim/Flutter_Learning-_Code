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

  Map<String, double> ForValu = {"num1":0 , "num2": 0, "num3": 0};
  double? sum;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("Naiem Hassan Niaem"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: SingleChildScrollView(

          reverse: true,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(height: 500,width: double.infinity, color: Colors.green,),
              Container(height: 500,width: double.infinity, color: Colors.red,),
              Container(height: 500,width: double.infinity, color: Colors.white70,),
              Container(height: 500,width: double.infinity, color: Colors.blue,),
            ],
          ),
        )

    );
  }
}
