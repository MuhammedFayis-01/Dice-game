import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: MyWidget()),
  );
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int left = 1;
  int right = 1;

  void mynum1() {
    setState(() {
      left = Random().nextInt(6) + 1;
    });
  }
  void mynum2() {
    setState(() {

      right = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 40, 110, 42),
      appBar: AppBar(
        centerTitle: true,
        title: Text('dice'),
        backgroundColor: Color.fromARGB(255, 40, 110, 42),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            children: [
              Expanded(
                  child: TextButton(
                      onPressed: () {
                        mynum1();
                      },
                      child: Image.asset('images/dice$left.png'))),
              Expanded(
                  child: TextButton(
                      onPressed: () {
                        mynum2();
                      },
                      child: Image.asset('images/dice$right.png'))),
            ],
          ),
        ),
      ),
    );
  }
}
