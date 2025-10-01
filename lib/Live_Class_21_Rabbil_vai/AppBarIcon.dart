import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_larning_class/Card.dart';
import 'package:flutter_larning_class/Live_Class_21_Rabbil_vai/Help_Page.dart';
import 'package:flutter_larning_class/Live_Class_21_Rabbil_vai/Notification_page.dart';
import 'package:flutter_larning_class/Live_Class_21_Rabbil_vai/Profile_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Appbaricon());
  }
}
class Appbaricon extends StatefulWidget {
  const Appbaricon({super.key});

  @override
  State<Appbaricon> createState() => _AppbariconState();
}

class _AppbariconState extends State<Appbaricon> {
  int SelectedItem = 0;
  List pagws =[
    HomePage(),
    ProfilePage()
    ,HomePage()
    ,NotificationPage()
    ,
  ];
  void onclick(valu){
    setState(() {
      SelectedItem=valu;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Appbar Icon"),
      actions: [
        IconButton(onPressed: ()=>onclick(0), icon: Icon(Icons.home)),
        IconButton(onPressed: ()=>onclick(1), icon: Icon(Icons.person)),
        IconButton(onPressed: ()=>onclick(2), icon: Icon(Icons.help)),
        IconButton(onPressed: ()=>onclick(3), icon: Icon(Icons.notifications)),
      ],
      ),
      body: pagws[SelectedItem],
    );
  }
}
