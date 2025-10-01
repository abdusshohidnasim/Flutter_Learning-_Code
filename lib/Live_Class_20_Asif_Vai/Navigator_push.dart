import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_larning_class/Live_Class_20_Asif_Vai/sceentwo.dart';

import 'Home.dart';
import 'Theartpage.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/home",
      routes: {
        "/home": (context) => Myhome(),
       "/Secend": (context) => Sceentwo(data:"Naiem Hassan Naiem "),
        "/Theardpage": (context) => Theartpage(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("404 page not found"),
            ),
          ),
        );
      },
      onGenerateRoute: (settings) {
        // if (settings.name == "/Secend") {
        //   final args = settings.arguments as ScreenAruments;
        //   return MaterialPageRoute(
        //     builder: (context) => Sceentwo(data: args.massage),
        //   );
        // }
        // return null;
      },
    );
  }
}

/// ✅ Arguments class should be outside widget tree
class ScreenAruments {
  final String massage;
  ScreenAruments(this.massage);
}
