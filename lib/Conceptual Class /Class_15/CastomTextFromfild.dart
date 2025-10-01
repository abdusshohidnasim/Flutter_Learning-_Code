import 'package:flutter/material.dart';

class Castomtextfromfild extends StatelessWidget {
  final TextEditingController emailcontroller;
  final Widget? prefix;
  final Widget? suffix;
  final bool obscureText;
  final String hintText;
  Castomtextfromfild({
    super.key,
    required this.emailcontroller,
    this.prefix,
    required this.hintText,
    this.obscureText = false,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailcontroller,
      obscureText: obscureText,

      decoration: InputDecoration(
        fillColor: Colors.grey,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.red, fontSize: 40),
        prefix: prefix,
        suffix: suffix,
        enabledBorder: OutlineInputBorder(),
        border: OutlineInputBorder(),
      ),
    );
  }
}
