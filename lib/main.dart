import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'DelaGothicOne'),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 127, 92, 255),
        appBar: AppBar(
          title: const Text(
            "Counter",
            style: TextStyle(
              fontFamily: 'DelaGothicOne',
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 89, 44, 255),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Tap '+' to increment",
                  style: TextStyle(
                    fontFamily: 'DelaGothicOne',
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                CounterWidget(),
                SizedBox(height: 10),
                Text(
                  "Tap '-' to decrement",
                  style: TextStyle(
                    fontFamily: 'DelaGothicOne',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CounterWidgetState();
  }
}

class _CounterWidgetState extends State<CounterWidget> {
  var _counter = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 100, left: 100),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () => setState(() {
              _counter--;
            }),
            icon: Icon(
              Icons.remove,
              color: Colors.white,
            ),
          ),
          Text(
            "$_counter",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "DelaGothicOne",
              fontSize: 20,
            ),
          ),
          IconButton(
            onPressed: () => setState(() {
              _counter++;
            }),
            icon: Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
