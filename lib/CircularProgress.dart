import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_larning_class/GridView.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naiem Hassan Naiem")),
      body: Center(
        child: Column(
          children: [
            LinearProgressIndicator(
              color: Colors.red,
              backgroundColor: Colors.pink,
              minHeight: 50,
            ),
            SizedBox(height: 50,),
            CircularProgressIndicator(
              backgroundColor: Colors.red,
              color: Colors.tealAccent,
              strokeWidth: 10,
              strokeCap: StrokeCap.butt,
            ),
          ],


        ),
      ),
    );
  }
}
