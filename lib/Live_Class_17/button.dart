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
  TextEditingController textEditingController = TextEditingController();
  String? selctor;
  List<String> citylist = ["Dhaka", "Rajshahi", "khulna"];
  double slidervalue=0;

  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Naiem Hassan Niaem"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text("Sign up"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                elevation: 50,
                shadowColor: Colors.white30,
                padding: EdgeInsets.fromLTRB(3, 20, 10, 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Sign up"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                elevation: 50,
                shadowColor: Colors.white30,
                padding: EdgeInsets.fromLTRB(3, 20, 10, 30),
                shape: CircleBorder(),
              ),
            ),
            TextButton(onPressed: () {}, child: Text("TextButton")),
            IconButton(onPressed: () {}, icon: Icon(Icons.home)),
            SizedBox(
              height: 60,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Text("IconelevateButton"),
              ),
            ),
            // Icon and Text
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text("Add Item"),
            ),
            Expanded(
              child: Row(
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("Sign up")),
                ],
              ),
            ),

            //this is logng button Icon and Text
            ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.login), Text("Log In")],
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text("Outlint buttton "),
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.blueGrey, width: 6),
              ),
            ),
            //DropDownButton
            DropdownButton(
              value: selctor,
              hint: Text("Sleactec a ooption"),
              items: citylist.map((String item) {
                return DropdownMenuItem<String>(value: item, child: Text(item));
              }).toList(),
              onChanged: (String? newvalu) {
                setState(() {
                  selctor = newvalu;
                });
              },
            ),

            ///PopapManuButton
            PopupMenuButton(
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(child: Text("Edit")),
                PopupMenuItem(child: Text("Delete")),
                PopupMenuItem(child: Text("Add")),
                PopupMenuItem(child: Text("Sleacted")),
              ],
              icon: Icon(Icons.more_horiz),
            ),
            PopupMenuButton(
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(child: Text("Edit")),
                PopupMenuItem(child: Text("Delete")),
                PopupMenuItem(child: Text("Add")),
                PopupMenuItem(child: Text("Sleacted")),
              ],
            ),


            Checkbox(value:_isChecked,
                tristate: true,
                onChanged: (bool? newvalu){
                  setState(() {
                    _isChecked = newvalu ?? false;
                  });
                }),

            Switch(value: _isChecked, onChanged: (bool? newvalue){
              setState(() {
                _isChecked =newvalue ??false;
              });
            }),
            Slider(value: slidervalue,
                max: 100,
                min: 0,
                onChanged: (double vlue){
                  setState(() {
                    slidervalue = vlue;
                  });
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        focusColor: Colors.white30,
        backgroundColor: Colors.black,
        shape: CircleBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
