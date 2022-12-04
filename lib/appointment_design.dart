//Wap in Flutter To Design Appointment Design
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
  var arrContent=[
    {
      'img':'assets/images/menslogo.webp',
      "name":"Dr.Alice Johnson",
      "subname":"physiotherapist"
    },
    {
      'img':'assets/images/womens.png',
      "name":"Dr.Mary",
      "subname":"surgeon"
    },
    {
      'img':'assets/images/mens.png',
      "name":"Dr.Mark Smith",
      "subname":"physiotherapist"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60),
            Row(
              children: [
                SizedBox(width: 20),
                Icon(Icons.notifications_none,color: Colors.blueAccent,size: 30),
                SizedBox(width: 280),
                CircleAvatar(
                  child: Image.asset('assets/images/boy1.png'),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 25),
                Text('Hello,',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.grey)),
                Text('Chris',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40)),
                SizedBox(width: 10),
                Image.asset('assets/images/hand.png',height: 40)
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                Stack(
                  children:[
                    Container(
                      clipBehavior: Clip.antiAlias,
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blue
                      ),
                      child: Image.asset('assets/images/wave.png',fit: BoxFit.cover),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 20,start: 20),
                      child: CircleAvatar(
                        child: Image.asset('assets/images/dumbell.webp',height: 20),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 135),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(start: 10),
                            child: Text('Start Training',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.white)),
                          )
                        ],
                      ),
                    )
                  ]
                ),
                SizedBox(width: 30),
                Stack(
                  children:[
                    Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.lightBlueAccent
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 20,start: 20),
                      child: CircleAvatar(
                        child: Image.asset('assets/images/appointment.png',height: 30),
                        radius: 20,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 110,start: 20),
                      child: Text('Your\nTreatment Plan',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                    )
                  ]
                ),
              ],
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 70),
              child: Text('What are your symptoms?',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Stack(
                    children:[
                      Container(
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black12
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 10,top: 10),
                        child: Image.asset('assets/images/smili.png',height: 20),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 33,top: 12),
                        child: Text("I'm Fine",style: TextStyle(fontWeight: FontWeight.bold)),
                      )
                    ]
                  ),
                  SizedBox(width: 20),
                  Stack(
                    children:[
                      Container(
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black12
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: 8,start: 10),
                        child: Image.asset('assets/images/fever.png',height: 20),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 35,top: 10),
                        child: Text('Fever',style: TextStyle(fontWeight: FontWeight.bold)),
                      )
                    ]
                  ),
                  SizedBox(width: 20),
                  Stack(
                    children:[
                      Container(
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black12
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: 8,start: 10),
                        child: Image.asset('assets/images/sneeze.png',height: 20),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 33,top: 10),
                        child: Text('Sneeze',style: TextStyle(fontWeight: FontWeight.bold)),
                      )
                    ]
                  ),
                  SizedBox(width: 20),
                  Stack(
                    children:[
                      Container(
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black12
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 27,top: 8),
                        child: Text('Other',style: TextStyle(fontWeight: FontWeight.bold),),
                      )
                    ]
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(width: 20),
                Text('Popular Therapists',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                SizedBox(width: 110),
                Text('See all',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey))
              ],
            ),
            Container(
              height: 500,
              child: ListView.builder(itemBuilder: (context,index)=>ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(arrContent[index]['img']!),
                ),
                title: Text(
                  arrContent[index]['name']!,style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  arrContent[index]['subname']!,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),
                ),
                 trailing:Icon(Icons.star,color: Colors.blue),
              ),itemCount: arrContent.length,
              ),
            )
          ],
        ),
      ),
    );
  }

}