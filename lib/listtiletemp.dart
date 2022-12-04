import 'package:flutter/material.dart';
main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.grey
      ),
      home: Listview(),
    );
  }
}
class Listview extends StatefulWidget {
  const Listview({Key? key}) :super (key: key);

  @override
  State<Listview> createState() => _ListviewState();
}
class _ListviewState extends State<Listview>{
  var arrContent=[
    {
      "name":"Aayushi",
      "title":"Utter pradesh",
      "image":"assets/image/rose.png",
      "time":"9:00pm",
    },
    {
      "name":"sujal",
      "title":"jodhpur",
      "image":"assets/image/lotus.png",
      "time":"8:pm",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),

        centerTitle: true,
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return ListTile(
          leading:
          Image.asset(arrContent[index]["image"]!),
          title: Text(arrContent[index]["name"]!),
          subtitle:Text(arrContent[index]["title"]!),
          trailing: Text(arrContent[index]["time"]!),
        );
      },itemCount: arrContent.length,
      )
    );
  }
}