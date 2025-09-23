import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green),
      home: TodoHomepage(),
    );
  }
}

class TodoHomepage extends StatefulWidget {
  const TodoHomepage({super.key});

  @override
  State<TodoHomepage> createState() => _TodoHomepageState();
}

class _TodoHomepageState extends State<TodoHomepage> {
  List<Map<String,String>> TodoList = [{}];
  TextEditingController textEditingController =TextEditingController();
  String TodoListitm="";




  AddItem(valu){
    setState(() {
      TodoListitm =valu.toString();

    });
  }
  click(){
    setState(() {
      TodoList.add({"item":TodoListitm});
      textEditingController.clear();
    });
  }

  Remove(int index){
    setState(() {
      TodoList.remove(TodoList[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App Item Delete And Add"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Expanded(
                      flex: 70,
                      child: TextFormField(
                        controller: textEditingController,
                        onChanged: (valu){
                          AddItem(valu);
                        },

                        decoration: AppitemBox("Add Item"),
                      ),
                    ),
                    Expanded(
                      flex: 30,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: ElevatedButton(
                          onPressed: (){
                            click();
                          },

                          style: AppButtonStyle(colors: Colors.green),
                          child: Text("Add Item"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 90,
                child: ListView.builder(
                  itemCount: TodoList.length,
                  itemBuilder: (BuildContext context, index) {
                    return Card(
                      child: Itemsizebox(
                        Row(
                          children: [
                            Expanded(
                              flex: 80,
                              child: Text("${TodoList[index]["item"]}"),
                            ),
                            Expanded(
                              flex: 20,
                              child: TextButton(
                                onPressed: () {
                                  Remove(index);
                                },
                                style: AppButtonStyle(),
                                child: Icon(Icons.delete),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

InputDecoration AppitemBox(lable) {
  return InputDecoration(
    labelText: lable,
    filled: false,
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
  );
}

ButtonStyle AppButtonStyle({colors}) {
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(23),
    iconColor: Colors.green,
    backgroundColor: colors,
    iconSize: 30,
  );
}

Container Itemsizebox(child) {

  return Container(height: 50, width: double.infinity,alignment: Alignment.center, child: child);
}
