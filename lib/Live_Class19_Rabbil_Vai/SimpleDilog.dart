import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomepage());
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => MyHomepageState();
}

class MyHomepageState extends State<MyHomepage> {
  ShowAlartDilog(){
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text("this is Alart Dilog "),
        actions: [
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("cancel")),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("OK"))
        ],
      );
    });


  }
  ShowSimpleDilog(){
    showDialog(context: context, builder: (BuildContext context){
      return SimpleDialog(
        title: Text("This is Simple Dilog"),
        children:  [
          SimpleDialogOption(
            onPressed: ()=> Navigator.pop(context,"Option A "),
            child: Text("Option A "),
          ),
          SimpleDialogOption(
            onPressed: ()=> Navigator.pop(context,"Option B "),
            child: Text("Option B"),
          ),
          SimpleDialogOption(
            onPressed: ()=> Navigator.pop(context,"Option C "),
            child: Text("Option C "),
          ),
        ],
      );
    });
  }

  ShowSnackBar(){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Here is my snack bar text"),duration: Duration(seconds: 2),
        action: SnackBarAction(label: "close", onPressed: () => ScaffoldMessenger.of(context).hideCurrentSnackBar(),),
      ),

    );


  }
  ShowBottomSheeet(){
    showModalBottomSheet(context: context, builder: (BuildContext context){
      return Container(
        height: 300,
        width: double.infinity,
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("Naiem Hassan Niaem"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        backgroundColor: Colors.amber,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){ShowAlartDilog();}, child: Text("Show Alart Dilog ")),
              SizedBox(height: 20,),
              TextButton(onPressed: (){ShowSimpleDilog();}, child: Text("Show Simple Dilog")),
              SizedBox(height: 20,),
              TextButton(onPressed: (){ShowSnackBar();}, child: Text("Show Snack Bar")),
              SizedBox(height: 20,),
              TextButton(onPressed: (){ShowBottomSheeet();}, child: Text("Show Boottom Sheet")),
            ],
          ),
        )
    );
  }
}
