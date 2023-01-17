// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyFirstApp());

// ignore: use_key_in_widget_constructors
class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyFirstApp> {
  // ignore: unused_field
  late bool _loading;
  // ignore: unused_field
  late double _progressValues;

  @override
  void initState() {
    _loading = false;
    _progressValues = 0.0;
    super.initState();
  }

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
            child: _loading
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      LinearProgressIndicator(value: _progressValues),
                      Text(
                        '${(_progressValues * 100).round()}%',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  )
                : Text(
                    'Press button to download',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                _loading = !_loading;
                _updateProgress();
              });
            },
            child: Icon(Icons.cloud_download)),
      ),
    );
  }

  void _updateProgress() {
    // ignore: unnecessary_const
    const oneSec = const Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValues += 0.2;

        if (_progressValues.toStringAsFixed(1) == '1.0') {
          _loading = false;
          t.cancel();
          _progressValues = 0.0;
          return;
        }
      });
    });
  }
}
