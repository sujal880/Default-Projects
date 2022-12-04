//Wap in Flutter To Design A User Design
import 'package:flutter/material.dart';
main(){
  runApp(My_App());
}
class My_App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 900,
        color: Colors.black,
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
              children: [
                SizedBox(width: 20),
                CircleAvatar(
                  child: Image.asset('assets/images/menslogo.webp'),
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text('Good morning,',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey)),
                        SizedBox(width: 180),
                        Icon(Icons.notifications_active_outlined,color: Colors.blue)
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(end: 250),
                          child: Text('Chris',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 20),
                  child: Text('Today',style: TextStyle(fontSize: 18,color:Colors.grey)),
                ),
                SizedBox(width: 170),
                Text('Now',style: TextStyle(fontSize: 18,color:Colors.grey)),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 20),
                Text('Monday 23 Jan',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                SizedBox(width: 80),
                Text('11:16 AM',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white))
              ],
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search,color: Colors.white),
                  hintText: 'Search by events,tasks and people',
                  hintStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    )
                  )
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                Text('Upcoming event',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.white)),
                SizedBox(width: 130),
                Image.asset('assets/images/task.png',height: 30)
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 20),
                Stack(
                  children:[
                    Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white30
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 10,top: 20),
                          child: Container(
                            clipBehavior: Clip.antiAlias,
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.asset('assets/images/wallp7.gif',fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text('Purrweb daily',style: TextStyle(color: Colors.white,fontSize: 18)),
                        SizedBox(width:70),
                        Stack(
                          children:[
                            Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blueAccent
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(top: 7,start: 20),
                              child: Text('Online',style: TextStyle(color: Colors.white)),
                            )
                          ]
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 70,top:50),
                      child: Text('11:30 AM - 12:30 PM',style: TextStyle(color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top:80,start: 10),
                      child: Text('Discussion of the new project',style: TextStyle(color: Colors.grey)),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 110,start: 10),
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Image.asset('assets/images/zoom.png',fit: BoxFit.cover),
                          ),
                          Stack(
                            children:[
                              Container(
                                height: 28,
                                width: 140,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.black12
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(top:6,start: 10),
                                child: Text('Link to the meeting',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              )
                            ]
                          ),
                          SizedBox(width: 20),
                          Container(
                            clipBehavior: Clip.antiAlias,
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.black12
                            ),
                            child: Image.asset('assets/images/googledrive.png',height: 30),
                          ),
                          Stack(
                            children:[
                              Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.black12
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(top: 7,start: 5),
                                child: Text('For Discussion',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                              )
                            ]
                          )
                        ],
                      ),
                    ),
                  ]
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(width: 20),
                Text('My Tasks',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 28)),
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: 5),
                  child: Text('16',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueAccent)),
                ),
                SizedBox(width: 140),
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: 4),
                  child: Text('See all',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blueAccent)),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                Image.asset('assets/images/task.png',height: 50),
                SizedBox(width: 10),
                Text('Update the UI Kit on the project',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20)),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 80),
                Text('Design',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.grey)),
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: 5),
                  child: CircleAvatar(
                    child: Text(''),
                    radius: 5,
                  ),
                ),
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: 3),
                  child: Text('Project',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}