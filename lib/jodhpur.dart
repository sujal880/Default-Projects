//Wap in Flutter To Design Jodhpur App
import 'package:flutter/material.dart';
main(){
  runApp(J_App());
}
class J_App extends StatelessWidget{
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
  var arrContent=[
    {
      "name":"Best Places",
      'img':"assets/images/download.jpg"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jodhpur Localities'),
      ),
      body:ListView.builder(itemBuilder: (context,index){
        return Padding(
          padding:const EdgeInsetsDirectional.all(8.0),
          child:Container(
            height: 70,
            decoration: BoxDecoration(
              color:Colors.grey,
              borderRadius: BorderRadius.circular(26),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    child:Image.asset(arrContent[index]['img']!),
                  ),
                    const SizedBox(
                      width: 11,
                    ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        arrContent[index]['name']!
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        );
      })

    );
  }

}