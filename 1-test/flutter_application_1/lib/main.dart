import 'package:flutter/material.dart';

void main() {
  runApp(
    const Center(
      //centering
      child: Text(
        "Now, say my name!",
        textDirection: TextDirection.ltr, //text direction - left
        style: TextStyle(
            //text style
            fontWeight: FontWeight.bold,
            color: Colors.red,
            fontSize: 35.0), //bold text, color of text, font size
      ),
    ),
  );
}
