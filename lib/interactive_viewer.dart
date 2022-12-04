//Wap in Flutter To Design Interactive Viewer
import 'package:flutter/material.dart';
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
        body:Center(
          child: InteractiveViewer(
            minScale: 0.1,
            maxScale: 6,
            child: Image.asset('assets/images/boy1.png'),
          ),
        )
    );
  }

}