import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'List View',
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  var arrContent = [
    {
      'img': "assets/images/boy.png",
    },
    {
      'img': "assets/images/boy.png"
    },
    {
      'img': "assets/images/boy.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Text View'),
        ),
        body: ListView.builder(itemBuilder: (context, index) =>ListTile(
      leading: CircleAvatar(
        child: Image.asset(arrContent[index]['img']!),
      ),
    ),itemCount: arrContent.length,
        )
    );
  }
}
