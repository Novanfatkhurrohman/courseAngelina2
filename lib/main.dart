import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: ball(),
    );
  }
}

class ball extends StatefulWidget {
  ball({Key? key}) : super(key: key);

  @override
  _ballState createState() => _ballState();
}

class _ballState extends State<ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('assets/img/ball$ballNumber.png')),
    );
  }
}
