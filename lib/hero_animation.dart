//Wap in Flutter To Design A Wallpaper Design
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
class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 90),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search,color: Colors.grey,),
                    hintText: 'Find Wallpaper...',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colors.grey
                      ),
                    )
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),

            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Text('Best of the month',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28
                ),),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 300,
                    width: 170,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset('assets/images/wall3.png'),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                   Container(
                     height: 300,
                     width: 170,
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(20),
                       child: Image.asset('assets/images/wall7.jpg'),
                     ),
                   ),
                  SizedBox(
                    width: 10,
                  ),
                   Image.asset('assets/images/wall7.jpg',height: 300,width: 170,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start:20),
              child: Text('The color tone',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 20),
                    child: InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
                      },

                      child: Hero(
                        tag: 'hero',
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color:Colors.pink
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>ThirdScreen()));
                  },
                    child: Hero(
                      tag: 'hello',
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color:Colors.blue
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color:Colors.blueAccent
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color:Colors.greenAccent
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color:Colors.black
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color:Colors.yellow
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color:Colors.purple
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                     Padding(
                       padding: const EdgeInsetsDirectional.only(end:220),
                       child: Text('Categories',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                     ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 170,
                          child:ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Stack(children: [
                              Image.asset('assets/images/walls2.webp'),
                              Center(
                                child: Text('Abstrack',style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),),
                              )
                              ]
                          ),
                          )
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 100,
                          width: 170,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Stack(children: [
                            Image.asset('assets/images/walls6.jpg'),
                              Center(
                                child: Text('Nature',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white
                                ),),
                              )
                          ]
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 20),
                        child: Container(
                          height: 100,
                          width: 170,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset('assets/images/walls8.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 100,
                        width: 170,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset('assets/images/walls10.jpg'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body:Column(
        children: [
          Hero(tag: 'hero', child: Container(
            height: 700,
            width: 500,
            color: Colors.pink,
          ))
        ],
      )
    );
  }
}
class ThirdScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          Hero(tag: 'hello', child: Container(
            height: 700,
            width: 400,
            color: Colors.blue,
          ))
        ],
      ),
    );
  }

}