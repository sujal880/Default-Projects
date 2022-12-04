//Wap in Flutter To Design A ListView
import 'package:flutter/material.dart';
main(){
  runApp(My_App());
}
class My_App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
  var arrContent=[
    {
      "name":"Top Places",
      'img':"assets/images/boy.png",
    },
    {
      "name":"Top Hotels",
      'img':"assets/images/girl.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body:ListView.builder(
          itemBuilder:(context,index)=>ListTile(
        leading:CircleAvatar(
          child: Image.asset(arrContent[index]['img']!),
          radius: 41,
        ),
            title: Center(
              child: Text(
                arrContent[index]['name']!,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            trailing: Column(
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Top_Places()),
                  );
                }, child: Text('Click')),
              ],
            )
    ),itemCount: arrContent.length,
      ),
    );
  }
}
class Top_Places extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Places'),
      ),
      body:Text('Top Places'),
    );
  }
}
