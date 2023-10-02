import 'package:flutter/material.dart';

void main() {
  runApp(MyButton());
}

class MyButton extends StatefulWidget {
  const MyButton({Key? key}) : super(key: key);
  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  int counter = 0;
  String defaultText = "Spanish Numbers";

  List<String> spanishNumbers = [
    "uno",
    "dos",
    "tres",
    "cuatro",
    "cinco",
    "seis",
    "seite",
    "ucho",
    "nueve",
    "diet",
  ];

  void displayText() {
    setState(() {
      defaultText = spanishNumbers[counter];
      if (counter < 9) {
        counter += 1;
      } else {
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My stateful App'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
      
         children: [
          Text(defaultText, style: TextStyle(fontSize: 30.0)),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          FloatingActionButton(
            onPressed: displayText,
            child: const Icon(Icons.add_a_photo),
          )
        ]),
      ),
    ));
  }
}
