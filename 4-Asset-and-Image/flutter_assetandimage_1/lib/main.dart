// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Lobster'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Adding Assets'),
        ),
        body: Center(
            child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image(image: AssetImage('assets/images/backgImage.jpg')),
            Image.asset('assets/icons/appico.ico'),
            Positioned(
              top: 16,
              left: 45,
              child: Text("JoJo's Bizarre Adventure",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.pink,
                    /* fontFamily: 'Lobster' */
                  )),
            )
          ],
        )),
      ),
    );
  }
}
