//Wap in Flutter To Design Clip Oval
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
main(){
  runApp(My_App());
}
class My_App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body:ClipOval(
          child: Image.asset('assets/images/tree.jpg'),
        )
    );
  }

}