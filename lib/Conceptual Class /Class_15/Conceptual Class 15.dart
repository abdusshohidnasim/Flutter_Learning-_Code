import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_larning_class/Conceptual%20Class%20/Class_15/CastomTextFromfild.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Login_page());
  }
}

class Login_page extends StatefulWidget {
  @override
  State<Login_page> createState() => Login_pageState();
}

class Login_pageState extends State<Login_page> {



  @override
  Widget build(BuildContext context) {
    TextEditingController _emailControlor = TextEditingController();
    TextEditingController _PasswordControlor = TextEditingController();

funtion(){
  showDialog(context: context, builder: (context){
    return AlertDialog(
      title: Text("Comming Sonb "),
      actions: [
        ElevatedButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("Cancel")),
        ElevatedButton(onPressed: (){
          Navigator.pop(context);
        }, child:  Text("ok"))
      ],);
  });
}
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Text(
                "Log In Page ",
                style: TextStyle(fontSize: 35, color: Colors.cyan),
              ),
              SizedBox(height: 50),
              Castomtextfromfild(
                emailcontroller: _emailControlor,
                hintText: 'Enter your Email',
                prefix: Icon(Icons.email),
              ),
              SizedBox(height: 50),
              Castomtextfromfild(
                emailcontroller: _PasswordControlor,
                hintText: "Enter Your Password",
                prefix: Icon(Icons.lock),
                obscureText: true,
              ),
              SizedBox(height: 50),
              InkWell(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text("Forget Password ?"),
                ),
                onTap: () {
                  funtion();
                },
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  if (_emailControlor.text.toString() == "Naiem" &&
                      _PasswordControlor.text.toString() == "1234") {
                    return log("Susess");
                  } else {
                    return log("Erorr");
                  }
                },

                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.red,
                  ),
                  child: Text("Login", textAlign: TextAlign.center),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
