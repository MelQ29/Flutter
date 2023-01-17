// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyFirstApp());

// ignore: use_key_in_widget_constructors
class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: const Text("My First App"),
          centerTitle: true,
        ),
        body: Center(
          // ignore: avoid_unnecessary_containers
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                LinearProgressIndicator(value: 69),
                Text(
                  '69 %',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  'Press button to download',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: null, child: Icon(Icons.cloud_download)),
      ),
    );
  }
}
