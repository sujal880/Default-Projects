//Wap in Flutter To Design A App
import 'package:flutter/material.dart';
main(){
  runApp(My_App());
}
class My_App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.grey
      ),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Transactions')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 30,start: 35),
                child: Stack(
                    children:[
                      Container(
                          height: 200,
                          width:150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.pinkAccent
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top:20,start: 20),
                        child: CircleAvatar(
                          child: Image.asset('assets/images/womens.png'),
                          radius: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: 70,start: 20),
                        child: Text('Desirae Stanton',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: 100,start: 20),
                        child: Text('+₹597',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: 100,start: 20),
                        child: Image.asset('assets/images/loading.png',height: 100)
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: 170,start: 20),
                        child: Text('13% /month',style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: 210,start: 10),
                        child: Icon(Icons.location_on,color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top:214,start: 35),
                        child: Text('367 Route 22',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                        ),),
                      )
                    ]
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 30),
                child: Stack(
                  children:[
                    Container(
                      height:200,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.yellowAccent
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 20,top: 20),
                      child: CircleAvatar(
                        child: Image.asset('assets/images/menslogo.webp'),
                        radius: 15,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 70,start: 20),
                      child: Text('Victa Wille',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 100,start: 20),
                      child: Text('+₹120',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 100,start: 20),
                      child: Image.asset('assets/images/loading.png',height: 100,),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 170,start: 20),
                      child: Text('32% /month',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 210),
                      child: Icon(Icons.location_on,color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 214,start: 26),
                      child: Text('1132 Liberty',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                      ),),
                    )
                  ]
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.shopping_bag,color: Colors.greenAccent,),
                suffixIcon: Icon(Icons.add_circle,color: Colors.black),
                hintText:'New Transactions',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: Colors.black
                  )
                )
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(start:40),
                child: Text('My Cards',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 199),
                child: Icon(Icons.compare_arrows),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20),
            child: Stack(
              children:[
                Container(
                  height: 150,
                  width: 270,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.greenAccent
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 20,top: 20),
                      child: Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white
                        ),
                        child: Center(
                          child: Text('10/24',style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 20),
                      child: Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white
                        ),
                        child: Center(child: Text('USD',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10
                        ),)),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(top:60,start: 20),
                  child: Text('kaylynn Workman',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: 100,start: 20),
                  child: Row(
                    children: [
                         Text('2380',style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),),
                      SizedBox(
                        width: 10,
                      ),
                      Text('.....',style: TextStyle(
                          fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),),
                      SizedBox(
                        width: 10,
                      ),
                      Text('.....',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),),
                      SizedBox(
                        width: 10,
                      ),
                      Text('.....',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),),
                    ],
                  ),
                )
              ]
            ),
          )
        ],
      ),
    );
  }
}