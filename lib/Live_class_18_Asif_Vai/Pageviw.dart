import 'package:flutter/material.dart';
//ai ta swap korla page change hoba
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
        body: PageView(
          children: [
            Container(color: Colors.black,),
            Container(color: Colors.blue,),
            Container(color: Colors.green,),
          ],
        )
    );
  }
}
