import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff7DEDFF),
        appBar: AppBar(
          backgroundColor: Colors.yellowAccent,
          title: Center(
            child: Text(
              "Dice Application",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
        body: MyApp2(),
      ),
    );
  }
}

class MyApp2 extends StatefulWidget {
  const MyApp2({Key key}) : super(key: key);

  @override
  _MyApp2State createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  var leftNumber = 1;
  var rightNumber = 2;
  void generateRandomNumber(int direcation) {
    if (direcation == 1) {
      print('i am leftNumber');
      setState(() {
        leftNumber = new Random().nextInt(5) + 1;
      });
    } else {
      print('i am rightNumber');
      setState(() {
        rightNumber = new Random().nextInt(5) + 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: Image.asset('images/dice$leftNumber.jpg'),
                onPressed: () {
                  generateRandomNumber(1);
                },
              ),
            ),
            flex: 1,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: Image.asset('images/dice$rightNumber.jpg'),
                onPressed: () {
                  generateRandomNumber(2);
                },
              ),
            ),
            flex: 1,
          ),
        ],
      ),
    );
  }
}
