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
    return MaterialApp(title: "Flutter Demo", home: TapbarScreen());
  }
}

class TapbarScreen extends StatelessWidget {
  const TapbarScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tob Tab bar whith for pages"),
          bottom: TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,

            tabs: [
              Tab(text: "Home"),
              Tab(text: "Profil"),
              Tab(text: "Help"),
              Tab(text: "Notifaicatrions"),
            ],
          ),
        ),
        body: TabBarView(
          children: [HomePage(), ProfilePage(), HelpPage(), NotificationPage()],
        ),
      ),
    );
  }
}
