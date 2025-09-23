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

  Map<String, double> ForValu = {"num1": 0, "num2": 0, "num3": 0};
  double? sum;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Naiem Hassan Niaem"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(height: 10, width: 250, color: Colors.green),
              Container(height: 10, width: 250, color: Colors.red),
              Container(height: 100, width: 520, color: Colors.white70),
              Container(height: 100, width: 520, color: Colors.blue),
              Container(
                height: 200,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  reverse: true,
                  physics: BouncingScrollPhysics(),
                  children: [
                    // Container(width: 250, color: Colors.green),
                    // Container(width: 250, color: Colors.red),
                    // Container(width: 520, color: Colors.white70),
                    // Container(width: 520, color: Colors.blue),

                    // Container(height: 300, color: Colors.green,),
                    // Container(height: 300, color: Colors.red,),
                    // Container(height: 300, color: Colors.white70,),
                    // Container(height: 300, color: Colors.blue,),
                    Container(height: 10, width: 250, color: Colors.green),
                    Container(height: 10, width: 250, color: Colors.red),
                    Container(height: 100, width: 520, color: Colors.white70),
                    Container(height: 100, width: 520, color: Colors.blue),
                  ],
                ),
              ),
            ],)
        ],

      ),
    );
  }
}
