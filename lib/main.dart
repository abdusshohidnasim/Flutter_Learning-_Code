import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
=======
import 'package:responsive_grid/responsive_grid.dart';
>>>>>>> b2000a3b83e31a61aa0debecf3b5767910d98931

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
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var Height = MediaQuery.of(context).size.width;
    var orientation = MediaQuery.of(context).orientation;

    return Scaffold(
<<<<<<< HEAD
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: BootstrapContainer(
            fluid: true,
            children: [
              Padding(
                padding: const EdgeInsets.all(0),
                child: BootstrapRow(
                  children: [
                    BootstrapCol(
                      fit: FlexFit.tight,
                      sizes: "col-xl-1 col-lg-2 col-md-3 col-sm-4",
                      child: Container(height: 100, color: Colors.cyan),
                    ),
                    BootstrapCol(
                      sizes: "col-xl-1 col-lg-2 col-md-3 col-sm-4",
                      child: Container(height: 100, color: Colors.black),
                    ),
                    BootstrapCol(
                      sizes: "col-xl-1 col-lg-2 col-md-3 col-sm-4",
                      child: Container(height: 100, color: Colors.blueGrey),
                    ),
                    BootstrapCol(
                      sizes: "col-xl-1 col-lg-2 col-md-3 col-sm-4",
                      child: Container(height: 100, color: Colors.red),
                    ),
                    BootstrapCol(
                      sizes: "col-xl-1 col-lg-2 col-md-3 col-sm-4",
                      child: Container(height: 100, color: Colors.amber),
                    ),
                    BootstrapCol(
                      sizes: "col-xl-1 col-lg-2 col-md-3 col-sm-4",
                      child: Container(height: 100, color: Colors.yellow),
                    ),
                    BootstrapCol(
                      sizes: "col-xl-1 col-lg-2 col-md-3 col-sm-4",
                      child: Container(height: 100, color: Colors.pinkAccent),
                    ),
                    BootstrapCol(
                      sizes: "col-xl-1 col-lg-2 col-md-3 col-sm-4",
                      child: Container(height: 100, color: Colors.cyan),
                    ),
                    BootstrapCol(
                      sizes: "col-xl-1 col-lg-2 col-md-3 col-sm-4",
                      child: Container(height: 100, color: Colors.blueGrey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
=======

>>>>>>> b2000a3b83e31a61aa0debecf3b5767910d98931
    );
  }
}
