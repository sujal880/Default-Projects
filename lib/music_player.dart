//Wap in Flutter To Design A Music Player
import 'package:flutter/material.dart';
main(){
  runApp(My_App());
}
class My_App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      body:
      SingleChildScrollView(
        child: Container(
          color: Colors.grey,
          child: Column(
          children: [
            SizedBox(height: 60),
            Row(
              children: [
                Icon(Icons.arrow_back,size: 30),
                SizedBox(width: 100),
                Text('Playing now',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(height: 60),
            Stack(
              children:[
                Center(
                  child: Card(
                    elevation: 14,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      height: 400,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset('assets/images/moon.jpg',fit: BoxFit.cover),
                    ),
                  ),
                ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 180,top: 370),
                          child: Text('4.5',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(top: 370),
                          child: Icon(Icons.star,color: Colors.yellowAccent,size: 18),
                        )
                      ],
                    ),
              ]
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 47),
              child: Row(
                children: [
                  Text('Behind the stats...',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white
                  ,fontSize: 28)),
                  SizedBox(
                    width: 45,
                  ),
                  Image.asset('assets/images/heart.png',height: 30,color: Colors.greenAccent),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsetsDirectional.only(end:190),
              child: Text('America News',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white)),
            ),
            SizedBox(height: 20),
            Icon(Icons.keyboard_arrow_down),
            Image.asset('assets/images/musicplayer.jpg',height: 200)
          ],
          ),
        ),
      ),
    );
  }

}