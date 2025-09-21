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
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Home1("hoem to Home page1 data passa"),
                  ),
                );
              },
              child: Text("Home to home page1"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Home2("hoem to Home page2 data passa"),
                  ),
                );
              },
              child: Text("Home to home page1"),
            ),
          ],
        ),
      ),
    );
  }
}

class Home1 extends StatelessWidget {
  String msg;
  Home1(this.msg, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naiem Hassan Naiem")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text("Home page 2 to Home page 1"),
            ),
            Text(msg),
          ],
        ),
      ),
    );
  }
}

class Home2 extends StatelessWidget {
  String msg;
  Home2(this.msg, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Naiem Hassan Naiem")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text("Home page 2 to Home page 1"),
            ),
            Text(msg),
          ],
        ),
      ),
    );
  }
}
