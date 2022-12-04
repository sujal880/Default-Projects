import 'package:flutter/material.dart';

main(){
  runApp(List());
}
class List extends StatelessWidget {
  const List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: ListView_Temp(),
    );
  }
}


class ListView_Temp extends StatefulWidget {
  const ListView_Temp({Key? key}) : super(key: key);

  @override
  State<ListView_Temp> createState() => _ListView_TempState();
}

class _ListView_TempState extends State<ListView_Temp> {
  var arrContent=[
    {
      "name":"Sujal",
      "subtitle":"Jodhpur"
    },
    {
      "name":"Aayushi",
      "subtitle":"UP"
    },{
      "name":"Sujal",
      "subtitle":"Jodhpur"

    },
    {
      "name":"Aayushi",
      "subtitle":"UP"

    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return ListTile(
          title: Text(arrContent[index]['name']!),
          subtitle: Text(arrContent[index]['subtitle']!),
        );
      },itemCount: arrContent.length,
      ),
    );
  }
}
