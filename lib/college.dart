//Wap in Flutter To Design A ListView
import 'package:flutter/material.dart';
main(){
  runApp(My_App());
}
class My_App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List View',
      theme: ThemeData(
        primarySwatch: Colors.blue
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
    },
    {
      "name":"Computer Science"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.builder(itemBuilder: (context,index){
        return Padding(padding: const EdgeInsetsDirectional.all(8.0),
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
              height: 150,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(12),
                  color: Colors.greenAccent
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(top: 120,start: 12),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        if(index==0){
                          return Arts();
                        }
                        else{
                          return Text('No Content');
                        }
                      })
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(arrContent[index]['name']!,style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Monteserrat',
                        ),)
                      ],
                    ),
                  ),
                ),
        ),
            ),
        );
      },itemCount: arrContent.length,
      )
    );
  }
}
class Arts extends StatelessWidget{
  var artsContent=[
    {
      'name':'B.A'
    },
    {
      'name':'M.A'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context,index){
        return Padding(padding: const EdgeInsetsDirectional.all(8.0),
            child: InkWell(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  if(index==0)
                    return BA();
                  else
                    return Text('No Content');
                }));
              },
              child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.greenAccent,
              ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(top:112,start: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(artsContent[index]['name']!,style: TextStyle(
                        fontFamily: 'Monteserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                      ),)
                    ],
                  ),
                ),
              ),
            ),
        );
      },itemCount: artsContent.length,
      ),
    );
  }
}
class BA extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
    );
  }

}