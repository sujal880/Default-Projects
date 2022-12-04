//Wap in Flutter To Design A Sports Page
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
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 50,start: 20),
                child: Image.asset('assets/images/line.webp',height: 40),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 50,start: 280),
                child: Icon(Icons.search,size: 35),
              )
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 270,top: 20),
            child: Text('Clubs',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 20),
                  child: Stack(
                    children:[
                      Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset('assets/images/women.jpg',fit: BoxFit.cover),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 10,top: 10),
                        child: Text("Women's \nClub",style: TextStyle(fontSize: 27,color: Colors.white),),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: 265,start: 15),
                        child: Text('2 events',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                      )
                    ]
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children:[
                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset('assets/images/gymboy.jpg',fit: BoxFit.cover,),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 10,start: 10),
                      child: Text("Men's\nClub",style: TextStyle(fontSize: 27,color: Colors.white),),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 260,start: 15),
                      child: Text('3 events',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                    )
                  ]
                )
              ],
            ),
          ),
          SizedBox(height: 60),
          Row(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(start:25),
                child: Text('Train',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28)),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 230,top: 5),
                child: Text('Alles',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green,fontSize: 18)),
              )
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 25),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey
                  ),
                  child: Image.asset('assets/images/yoga.png'),
                ),
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end:53),
                    child: Text('Yoga & Tennies',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text('Feb 27 | 10:00am-01:00pm'),
                ],
              ),
              SizedBox(width: 70),
              CircleAvatar(
                child: Text('₹99',style: TextStyle(color: Colors.white),),
                backgroundColor: Colors.black,
              )
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 25),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Image.asset('assets/images/ball.png',fit: BoxFit.cover,),
                ),
              ),
              Column(
                children: [
                     Text('Begineer Bootcamp',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),),
                  SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 10),
                    child: Text('July 17 | 12:00pm-3:00pm'),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 75),
                child: CircleAvatar(
                  child: Text('₹99',style: TextStyle(color: Colors.white)),
                  backgroundColor: Colors.black,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 25),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey
                  ),
                  child: Image.asset('assets/images/bicep.png'),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 10),
                    child: Text('Mens & Womens League',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),),
                  ),
                  SizedBox(height: 4),
                  Text('Feb 27 | 10:00am-01:00pm')
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 60),
                child: CircleAvatar(
                  child: Text('₹99',style: TextStyle(color: Colors.white)),
                  backgroundColor: Colors.black,
                ),
              )
            ],
          )
          ],
      )
    );
  }

}