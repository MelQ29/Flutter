import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      //centering
      child: Text(
        "Now, say my name!",
        textDirection: TextDirection.ltr, //text direction - left
        style: const TextStyle(
            //text style
            fontWeight: FontWeight.bold,
            color: Colors.red,
            fontSize: 35.0), //bold text, color of text, font size
      ),
    ),
  );
}
