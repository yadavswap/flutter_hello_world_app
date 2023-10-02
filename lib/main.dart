import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    title: 'Flutter App',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.green,
      hintColor: Colors.orange,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Flutter'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hello, I\'m here'),
            const Text('Hello'),
            ElevatedButton(
              child: Text('Login'),
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                  overlayColor: MaterialStateProperty.all(Colors.blue)),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_a_photo),
      ),
    ),
  );
  runApp(app);
}
