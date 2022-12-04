//Wap in Flutter To Design A Musical Instrument Design
import 'package:flutter/material.dart';

main() {
  runApp(My_App());
}

class My_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  var arrContent=[
    {
      'img':'assets/images/musicwall.jpg',
      "name":"Our Town",
      "subname":"James Van Heusen",
      "context":"Easy"
    },
    {
      'img':'assets/images/musicwall1.jpg',
      "name":"Silver Night",
      "subname":"Gruber Franz Xavier",
      "context":"Easy"
    },
    {
      'img':'assets/images/musicwall3.jpg',
      "name":"Wellerman",
      "subname":"Traditional",
      "context":"Easy"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: 50, start: 20),
                  child: Text('Discover',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: 50, start: 120),
                  child: Icon(Icons.search, size: 30),
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: 50),
                  child: Image.asset('assets/images/campare.webp', height: 30),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 240),
              child: Text('All Compactions',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.grey)),
            ),
            SizedBox(height: 30),
            Stack(children: [
              Container(
                clipBehavior: Clip.antiAlias,
                height: 150,
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset('assets/images/tree.webp', fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 50, start: 10),
                child: Text('Our Christmas',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 75, start: 10),
                child: Text('Gift For You!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white)),
              ),
            ]),
            SizedBox(height: 30),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 20),
                  child: Text('Trending Pieces',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ),
                SizedBox(width: 140),
                Text('See all',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),)
              ],
            ),
            Container(
              height: 500,
              child: ListView.builder(itemBuilder: (context,index)=>ListTile(
                leading: Container(
                  clipBehavior: Clip.antiAlias,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(arrContent[index]['img']!,fit: BoxFit.cover,),
                ),
                title: Text(
                  arrContent[index]['name']!,style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  arrContent[index]['subname']!
                ),
                trailing: Stack(
                  children:[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.lightGreen
                      ),
                      height: 30,
                      width: 50,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 7,start: 9),
                      child: Text(arrContent[index]['context']!,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.greenAccent)),
                    )
                ]
                ),
              ),itemCount: arrContent.length,
    )
    )
    ]
        ),
      ),
    );
  }
}
