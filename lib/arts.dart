//Wap in Flutter To Design Courses
import 'package:flutter/material.dart';
main(){
  runApp(My_App());
}
class My_App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Courses',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
  var arrContent=[
    {
      "name":"Arts"
    },
    {
      "name":"Commerce"
    },
    {
      "name":"Science"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Courses'),
      ),
      body:ListView.builder(itemBuilder: (context,index){
        return Padding(padding: const EdgeInsetsDirectional.all(8.0),
            child: Container(
            height: 90,
              child: Padding(
                padding: const EdgeInsetsDirectional.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(arrContent[index]['name']!,style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),)
                      ],
                    )
                  ],
                ),
              ),
        ),
        );
      },itemCount: arrContent.length,
      )
    );
  }

}