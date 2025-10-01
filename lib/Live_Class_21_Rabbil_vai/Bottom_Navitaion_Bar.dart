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
    return MaterialApp(home: BttomNavitaionBar());
  }
}

class BttomNavitaionBar extends StatefulWidget {
  const BttomNavitaionBar({super.key});

  @override
  State<BttomNavitaionBar> createState() => _BttomNavitaionBarState();
}

class _BttomNavitaionBarState extends State<BttomNavitaionBar> {
  int Selectedpage = 0;
  final List pages = [
    HomePage(),
    ProfilePage(),
    HelpPage(),
    NotificationPage(),
  ];

  void bottmnavigatonbarOnTabe(vlau){
    setState(() {
      Selectedpage=vlau;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation Bar")),
      body: pages[Selectedpage],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: Selectedpage,
          onTap: (vlau)=>bottmnavigatonbarOnTabe(vlau),
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
            BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notification"),
            BottomNavigationBarItem(icon: Icon(Icons.help),label: "Help"),

          ] ),
    );
  }
}
