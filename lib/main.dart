import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: askMe(),
      ),
    );

// ignore: camel_case_types
class askMe extends StatefulWidget {
  @override
  _askMeState createState() => _askMeState();
}

// ignore: camel_case_types
class _askMeState extends State<askMe> {
  int ballNumber = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(4) + 1;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('images/ball$ballNumber.png'),
          ),
        ),
      ),
    );
  }
}
