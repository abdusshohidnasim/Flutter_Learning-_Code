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
  List<Shoping> Item = [
    Shoping(name: "Mouse"),
    Shoping(name: "Laptop"),
    Shoping(name: "Microphone"),
  ];
  TextEditingController textEditingController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Naiem Hassan Niaem"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(

                      child: TextField(
                        controller: textEditingController,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(onPressed: (){
                    final text = textEditingController.text.trim();
                    if(text.isEmpty) {}
                    else{
                      setState(() {
                        Item.add(Shoping(name: text));
                        textEditingController.clear();
                      });
                    }
                  }, child: Text("Add Item")),
                ),
              ],
            ),
            Expanded(child: ListView.builder(
              itemCount: Item.length, // <-- এটা দিতে হবে নাহলে infinite list হবে
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.white30,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(Item[index].name),
                        IconButton(onPressed: () {
                          setState(() {
                            Item.remove(Item[index]);
                          });

                        }, icon: Icon(Icons.delete)),
                      ],
                    ),
                  ),
                );
              },
            ),)

          ],
        )
    );
  }
}

class Shoping {
  String name;
  bool isBought;
  Shoping({required this.name, this.isBought = false});
}
