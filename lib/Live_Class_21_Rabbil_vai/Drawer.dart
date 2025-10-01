import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_larning_class/Card.dart';

import 'Help_Page.dart';
import 'Notification_page.dart';
import 'Profile_page.dart';

void main() {
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DrawerNavitaion(),);
  }
}
class DrawerNavitaion extends StatefulWidget {




  @override
  State<DrawerNavitaion> createState() => _DrawerNavitaionState();
}

class _DrawerNavitaionState extends State<DrawerNavitaion> {
  int Selectedpage = 0;
  List pages = [
    HomePage(),
    ProfilePage(),
    HelpPage(),
    NotificationPage(),
  ];
  void onClick(valu){
setState(() {
  Selectedpage= valu;
});
Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer"),

      ),
      body: pages[Selectedpage],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(2),
          children: [
            DrawerHeader(child: Text("naiem HassanNaiem "),decoration: BoxDecoration(color: Colors.amberAccent),),
            ListTile(leading: Icon(Icons.home),title: Text("Home"),onTap: ()=>onClick(0),),
            ListTile(leading: Icon(Icons.person),title: Text("person"),onTap: ()=>onClick(1),),
            ListTile(leading: Icon(Icons.notifications),title: Text("notifications"),onTap: ()=>onClick(2),),
            ListTile(leading: Icon(Icons.help),title: Text("help"),onTap: ()=>onClick(3),),


          ],
        ),


      ),
    )
        ;
  }
}

