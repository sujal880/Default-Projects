//Wap in Flutter To Design A Grid View
import 'package:flutter/material.dart';
main(){
  runApp(My_App());
}
class My_App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Container(
            color: Colors.greenAccent,
            margin: EdgeInsets.all(8),
          ),
          Container(
            color: Colors.red,
            margin: EdgeInsets.all(8),
          ),
          Container(
            color: Colors.purple,
            margin: EdgeInsets.all(8),
          ),
          Container(
            color: Colors.blue,
            margin: EdgeInsets.all(8),
          ),
          Container(
            color: Colors.black,
            margin: EdgeInsets.all(8),
          ),
          Container(
            color: Colors.grey,
            margin: EdgeInsets.all(8),
          ),
          Container(
            color: Colors.blueGrey,
            margin: EdgeInsets.all(8),
          ),
          Container(
            color: Colors.green,
            margin: EdgeInsets.all(8),
          ),
          Container(
            color: Colors.orange,
            margin: EdgeInsets.all(8),
          ),
          Container(
            color: Colors.greenAccent,
            margin: EdgeInsets.all(8),
          ),
          Container(
            color: Colors.red,
            margin: EdgeInsets.all(8),
          ),

        ],
      )
    );
  }

}