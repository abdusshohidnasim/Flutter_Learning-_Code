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

  Map<String, double> ForValu = {"num1":0 , "num2": 0, "num3": 0};
  double? sum;
  @override
  Widget build(BuildContext context) {
    Myinputonchange(inputkey,InputValue) {
      setState(() {
        ForValu.update(inputkey, (value)=>double.parse(InputValue));
      });
    }
    AddAllNumber(){
      setState(() {
        sum= ForValu["num1"]! + ForValu["num2"]! + ForValu["num3"]!;
      });
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Naiem Hassan Niaem"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Sum=${sum}", style: HadTextstyle()),
          Padding(padding: const EdgeInsets.all(12.0), child: TextFormField(
            onChanged: (valu){

              Myinputonchange("num1", valu);
            }, decoration: ApplayStyle("Frost Number"),)),
          Padding(padding: const EdgeInsets.all(12.0), child: TextFormField( onChanged: (valu){

            Myinputonchange("num2", valu);
          },decoration: ApplayStyle("Secend Number "),)),
          Padding(padding: const EdgeInsets.all(12.0), child: TextFormField(onChanged: (valu){

            Myinputonchange("num3", valu);
          },decoration: ApplayStyle("Thard Number "),)),

          Container(
            height: 75,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  AddAllNumber();
                },
                child: Text("Submit"),
                style: AppButton(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

InputDecoration ApplayStyle([label]) {
  return InputDecoration(
    contentPadding: EdgeInsets.all(20),

    filled: false,
    focusColor: Colors.blue,
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
    labelText: label,
  );
}

TextStyle HadTextstyle() {
  return TextStyle(
    color: Colors.blue,
    fontWeight: FontWeight.bold,
    fontSize: 40,
  );
}

ButtonStyle AppButton() {
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(20),
    backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
  );
}
