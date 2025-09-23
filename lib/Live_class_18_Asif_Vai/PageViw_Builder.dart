import 'package:flutter/material.dart';
// // ai Fitted box ar kaj holo sob kiso oi jagai modha fit kora
// Flutter-এ FittedBox হলো এমন একটি widget, যেটা তার child widget-কে নিজের available space-এর মধ্যে scale বা resize করে fit করে দেয়।
//
// 🔹 সহজভাবে বললে:
//
// 👉 FittedBox = “child widget কে available জায়গার মধ্যে adjust করে ফেলা”
// ✅ সংক্ষেপে:
// FittedBox এর কাজ হলো → parent container-এর available জায়গার মধ্যে child widget কে scale/resize করে fit করানো।

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
        body: PageView.builder(itemCount: 5, itemBuilder: (context,index){
          return  Container(color: Colors.blue,);
        })
    );
  }
}
