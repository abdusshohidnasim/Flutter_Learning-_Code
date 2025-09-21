import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Hoamepage());
  }
}

class Hoamepage extends StatelessWidget {
  Mysnackbar(Massage, context) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(Massage)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(), // appbar sara drawer kaj kora na
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(

                decoration: BoxDecoration(color: Colors.cyan),
                accountName: Text("Abdus Shohid Nasim"),
                accountEmail: Text("mdabdusshohidnasim@gmail.com"),
                currentAccountPicture: Container(

                  height: 300,
                  width: 300,
                  padding: EdgeInsets.all(0),

                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: NetworkImage("https://scontent.fdac24-4.fna.fbcdn.net/v/t39.30808-1/520541836_1938012377023157_4939618943968724526_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=104&ccb=1-7&_nc_sid=1d2534&_nc_eui2=AeHmDbpGzq3t4cQUZxVwIEa31MX2Gh9IPx_UxfYaH0g_H_Ypo6l3AM4QBtkjY0uzg8T-TogrrO-14urKOSLA7Xtj&_nc_ohc=0YcthIQJpasQ7kNvwEjVdC7&_nc_oc=Adn3mt1labJttWO1DF6SIMzUhNbZ7HvXte_vheTw2wkRiO5N6WAgBILf6kKKUTPw-vo&_nc_zt=24&_nc_ht=scontent.fdac24-4.fna&_nc_gid=7QalzTWHom-in1FDXeeTxg&oh=00_AfbPIk6lsNbz80_VQ_9BezoH2crHMxpiK7hoAIf0OH41fQ&oe=68D15CF1")),
                  ),
                ),
              ),
            ),

            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {
                Mysnackbar("I am home Drawer", context);
              },
            ),
            ListTile(
              title: Text("prifile "),
              leading: Icon(Icons.person_off),
              onTap: () {
                Mysnackbar("I am home Drawer", context);
              },
            ),
            ListTile(
              title: Text("person"),
              leading: Icon(Icons.person_off_sharp),
              onTap: () {
                Mysnackbar("I am home Drawer", context);
              },
            ),
            ListTile(
              title: Text("blance"),
              leading: Icon(Icons.account_balance),
              onTap: () {
                Mysnackbar("I am home Drawer", context);
              },
            ),
            ListTile(
              title: Text("email"),
              leading: Icon(Icons.email),
              onTap: () {
                Mysnackbar("I am home Drawer", context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
