//Wap in Flutter To Design Network Image
import 'package:flutter/material.dart';
import 'package:untitled/container_widget.dart';
import 'package:untitled/gym.dart';
import 'package:untitled/temp_1.dart';
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
class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>HomePage();
}
class HomePage extends State<HomeScreen>{
  var count=0;
  var patharr=[
    {
      'imgpath':"https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
    },
    {
      'img':"https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Network Image'),
      ),
      body:Column(
        children: [
          ContainerWidget(patharr[count]['imgpath']),
          
        ],
      )
    );
  }
}