import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      //Cupertion for iOS
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text("This is title."),
          centerTitle: true,
        ),
        body: const Center(
            child: Text("This is body.",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white))),
      ),
    ),
  );
}
