import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'List View',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  var arrContent = [
    {
      "name": "Bharat",
      "number": "9856354635",
      'img': "assets/images/manavatar.png"
    }
  ];


  var arrColors = [
    Colors.purpleAccent,
    Colors.red,
    Colors.tealAccent,
    Colors.brown,
    Colors.orangeAccent,
    Colors.lightBlue,
    Colors.deepPurple,
    Colors.limeAccent,
    Colors.deepPurple,
    Colors.pinkAccent,
    Colors.orange,
    Colors.purple,
    Colors.lightGreenAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text View'),
      ),
      body: ListView(
        children: [
          Container(
            height: 100,
            color: Colors.purpleAccent,
          ),
          Container(
            height: 100,
            color: Colors.orangeAccent,
          ),
          Container(
            height: 100,
            color: Colors.purpleAccent,
          ),
          Container(
            height: 100,
            color: Colors.limeAccent,
          ),
          Container(
            height: 100,
            color: Colors.brown,
          ),
          Container(
            height: 100,
            color: Colors.pinkAccent,
          ),
          Container(
            height: 100,
            color: Colors.tealAccent,

          ),
          Container(
            height: 100,
            color: Colors.pink,
          ),
          Container(
            height: 100,
            color: Colors.tealAccent,
          ),
          Container(
            height: 100,
            color: Colors.teal,
          ),
          Container(
              height: 100,
              color: Colors.red
          )
        ],
      ),
    );
  }
}