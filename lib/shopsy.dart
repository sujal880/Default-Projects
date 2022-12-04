//Wap in Flutter To Design A Shopsy Clone
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled/shirt_desc_page.dart';
import 'package:untitled/shopsy_bag.dart';
import 'package:untitled/shopsy_bedsheet.dart';
import 'package:untitled/shopsy_caps.dart';
import 'package:untitled/shopsy_clock.dart';
import 'package:untitled/shopsy_curtain.dart';
import 'package:untitled/shopsy_dress.dart';
import 'package:untitled/shopsy_girl_jeans.dart';
import 'package:untitled/shopsy_girl_tshirt.dart';
import 'package:untitled/shopsy_jeans.dart';
import 'package:untitled/shopsy_jewellery.dart';
import 'package:untitled/shopsy_kurtis.dart';
import 'package:untitled/shopsy_ladies_watches.dart';
import 'package:untitled/shopsy_lamp.dart';
import 'package:untitled/shopsy_sandal.dart';
import 'package:untitled/shopsy_sarees.dart';
import 'package:untitled/shopsy_storage.dart';
import 'package:untitled/shopsy_tools.dart';
import 'package:untitled/shopsy_top.dart';
import 'package:untitled/shopsy_towel.dart';
import 'package:untitled/shopsy_watches.dart';
import 'package:untitled/shopsy_track_pants.dart';
import 'package:untitled/shopsy_wallet.dart';
import 'package:untitled/shospy_box.dart';
import 'package:untitled/shospy_decorative_items.dart';
import 'package:untitled/shospy_face.dart';
import 'package:untitled/shospy_hair.dart';
import 'package:untitled/shospy_lotion.dart';

main() {
  runApp(My_App());
}

class My_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashScreen();
}

class SplashScreen extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset('assets/images/Shopsy_logo.png'),
          )
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top:40,start:20),
                      child: Text(
                        'shopsy',
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent),
                      ),
                    ),
                    SizedBox(width: 180),
                    InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Search()));
                        },
                        child: Padding(
                          padding: const EdgeInsetsDirectional.only(top:40),
                          child: Icon(Icons.search),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Cart()));
                        },
                        child: Padding(
                          padding: const EdgeInsetsDirectional.only(top:40),
                          child: Icon(Icons.shopping_cart),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Log_In()));
                        },
                        child: Padding(
                          padding: const EdgeInsetsDirectional.only(top:40),
                          child: Text('Log in'),
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset('assets/images/saleban.jpg'),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(end: 10),
                        child: Column(
                          children: [
                            CircleAvatar(
                              child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Rakhi()));
                                  },
                                  child: Image.asset('assets/images/rakhi.png')),
                              backgroundColor: Colors.red,
                              radius: 30,
                            ),
                            Text('Rakhi',style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => Men()));
                                },
                                child:Image.asset('assets/images/menlogos.webp')),
                            radius: 30,
                          ),
                          Text('Men',style:TextStyle(
                            fontWeight: FontWeight.bold
                          )),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Women()));
                                },
                                child: Image.asset('assets/images/girlslogo.png')),
                            radius: 30,
                          ),
                          Text('Women',style:TextStyle(
                            fontWeight:FontWeight.bold
                          ))
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Home()));
                                },
                                child: Image.asset('assets/images/home.png')),
                            radius: 30,
                          ),
                          Text('Home',style:TextStyle(
                            fontWeight:FontWeight.bold
                          ))
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Beauty()));
                                },
                                child: Image.asset('assets/images/beauty.png')),
                            radius: 30,
                          ),
                          Text('Beauty',style:TextStyle(
                            fontWeight:FontWeight.bold
                          ))
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Electronics()));
                                },
                                child: Image.asset('assets/images/electronics.png')),
                            radius: 30,
                          ),
                          Text('Electronics',style:TextStyle(fontWeight:FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Appliances()));
                                },
                                child: Image.asset('assets/images/appliances.png')),
                            radius: 30,
                          ),
                          Text('Appliances',style:TextStyle(fontWeight:FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Toys()));
                                },
                                child: Image.asset('assets/images/toys.png')),
                            radius: 30,
                          ),
                          Text('Kids And Toys',style:TextStyle(fontWeight:FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Furniture()));
                                },
                                child: Image.asset('assets/images/furniture.png')),
                            radius: 30,
                          ),
                          Text('Furniture',style:TextStyle(fontWeight:FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Mobile()));
                                },
                                child: Image.asset('assets/images/mobile.png')),
                            radius: 30,
                          ),
                          Text('Mobiles',style:TextStyle(fontWeight:FontWeight.bold))
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                        Image.asset('assets/images/summersale.jpg',height:200,width:400),
                      SizedBox(
                        width: 20,
                      ),
                         Image.asset('assets/images/rakhi5.jpg',height:200,width:400),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 30),
                        child: Text(
                          'Super Rakhi Deals',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 26),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 200,
                              width: 150,
                              child: Image.asset('assets/images/rakhi2.jpg'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 200,
                              width: 150,
                              child: Image.asset('assets/images/rakhi3.jpg'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 200,
                              width: 150,
                              child: Image.asset('assets/images/rakhi4.jpg'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height:20
                      ),
                      Container(
                        height:1,
                        width:300,
                        color:Colors.grey
                      ),
                      SizedBox(
                        height:30,
                      ),
                         Text('Hot Deals',style:TextStyle(fontWeight:FontWeight.bold,fontSize:29)),
                         SizedBox(
                           height:20
                         ),
                         Row(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.only(start:20),
                              child: Column(
                                children: [
                                  Card(
                                    elevation:10,
                                    shape:RoundedRectangleBorder(
    borderRadius:BorderRadius.circular(12),
    ),
                                    child: Container(
                                      height:100,
                                      width:100,
                                      decoration: BoxDecoration(
                                        borderRadius:BorderRadius.circular(12),
                                        color:Colors.grey
                                      ),
                                      child: Image.asset('assets/images/air.webp'),
                                    ),
                                  ),
                                  Text('Wireless Airpods'),
                                  Text('             Just ₹225',style:TextStyle(fontWeight:FontWeight.bold))
                                ],
                              ),
                            ),
                            SizedBox(
                              width:15
                            ),
                               Column(
                                children: [
                                  Card(
                                    elevation:10,
                                    shape:RoundedRectangleBorder(
    borderRadius:BorderRadius.circular(12),
    ),
                                    child: Container(
                                      height:100,
                                      width:100,
                                      decoration:BoxDecoration(
                                        borderRadius:BorderRadius.circular(12),
                                        color:Colors.grey
                                      ),
                                      child:InkWell(onTap:(){
                                        Navigator.push(context,MaterialPageRoute(builder:(context)=>Shoes()));
    },
                                          child: Image.asset('assets/images/menshoes.png'))
                                    ),
                                  ),
                                  Text('Leather Shoes'),
                                  Text('        Just ₹225',style:TextStyle(
                                    fontWeight:FontWeight.bold
                                  ))
                                ],
                              ),
                            SizedBox(
                              width:15
                            ),
                            Column(
                              children: [
                                Card(
                                  elevation:10,
                                  shape:RoundedRectangleBorder(
    borderRadius:BorderRadius.circular(12),
    ),
                                  child: Container(
                                    height:100,
                                    width:100,
                                    decoration:BoxDecoration(
                                      borderRadius:BorderRadius.circular(12),
                                      color:Colors.grey
                                    ),
                                    child:InkWell(onTap:(){
                                      Navigator.push(context,MaterialPageRoute(builder:(context)=>Bag()));
    },
                                        child: Image.asset('assets/images/womenbags.png'))
                                  ),
                                ),
                                Text('Womens Bags'),
                                Text('        Just ₹599',style:TextStyle(
                                  fontWeight:FontWeight.bold
                                ))
                              ],
                            )
                          ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height:10
                ),
                Row(
                  children:[
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start:20),
                      child: Column(
                        children: [
                          Card(
                            elevation:10,
                            shape:RoundedRectangleBorder(
    borderRadius:BorderRadius.circular(12)
    ),
                            child: Container(
                              height:100,
                              width:100,
                              decoration:BoxDecoration(
                                borderRadius:BorderRadius.circular(12),
                                color:Colors.grey
                              ),
                              child:InkWell(onTap:(){
                                Navigator.push(context,MaterialPageRoute(builder:(context)=>TShirts()));
    },
                                  child: Image.asset('assets/images/mentshirt.webp'))
                            ),
                          ),
                          Text('    Mens T-Shirt'),
                          Text('          Just ₹399',style:TextStyle(fontWeight:FontWeight.bold)),
                        ],
                      ),
                    ),
                    SizedBox(
                      width:15
                    ),
                    Column(
                      children: [
                        Card(
                          elevation:10,
                          shape:RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(12)
                          ),
                          child: Container(
                              height:100,
                              width:100,
                              decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(12),
                                  color:Colors.grey
                              ),
                              child:InkWell(onTap:(){
                                Navigator.push(context,MaterialPageRoute(builder:(context)=>Shirts()));
    },
                                  child: Image.asset('assets/images/shirt7.webp'))
                          ),
                        ),
                        Text('       Mens Shirt'),
                        Text('          Just ₹699',style:TextStyle(fontWeight:FontWeight.bold))
                      ],
                    ),
                    SizedBox(
                      width:15
                    ),
                    Column(
                      children: [
                        Card(
                          elevation:10,
                          shape:RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(12)
                          ),
                          child: Container(
                            height:100,
                            width:100,
                            decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(12),
                              color:Colors.grey
                            ),
                            child:InkWell(onTap:(){
                              Navigator.push(context,MaterialPageRoute(builder:(context)=>Sarees()));
    },
                                child: Image.asset('assets/images/sarre.png'))
                          ),
                        ),
                        Text('     Best Sarees'),
                        Text('         Just ₹999',style:TextStyle(fontWeight:FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height:20,
                ),
                Container(
                    height:1,
                    width:300,
                    color:Colors.grey
                ),
                SizedBox(height:30),
                Column(
                  children:[
                    Text('Ultimate Value Buys',style:TextStyle(fontWeight:FontWeight.bold,fontSize:28)),
                    SizedBox(
                      height:20
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children:[
                          Padding(
                            padding: const EdgeInsetsDirectional.only(start:20),
                            child: Column(
                              children: [
                                Card(
                                  elevation:10,
                                  shape:RoundedRectangleBorder(
                                      borderRadius:BorderRadius.circular(12)
                                  ),
                                  child: Container(
                                    height:200,
                                    width:200,
                                    decoration:BoxDecoration(
                                      borderRadius:BorderRadius.circular(12),
                                      color:Colors.blue
                                    ),
                                    child:InkWell(onTap:(){
                                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Watch_3()));
    },
                                        child: Image.asset('assets/images/watch3.png'))
                                  ),
                                ),
                                Text('             Smart Watches Starting',style:TextStyle(fontWeight: FontWeight.bold)),
                                Text('                                 At Just ₹999')
                              ],
                            ),
                          ),
                          SizedBox(
                            width:20
                          ),
                          Column(
                            children: [
                              Card(
                                elevation:10,
                                shape:RoundedRectangleBorder(
                                    borderRadius:BorderRadius.circular(12)
                                ),
                                child: Container(
                                  height:200,
                                  width:200,
                                  decoration:BoxDecoration(
                                    color:Colors.greenAccent,
                                    borderRadius:BorderRadius.circular(12)
                                  ),
                                  child:InkWell(onTap:(){
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Shoes_4()));
    },
                                      child: Image.asset('assets/images/shoes4.webp'))
                                ),
                              ),
                              Text('             Mens Shoes Starting',style:TextStyle(fontWeight:FontWeight.bold,fontSize:15)),
                              Text('                             At Just ₹1999')
                            ],
                          ),
                          SizedBox(
                            width:20
                          ),
                          Column(
                            children: [
                              Card(
                                elevation:10,
                                shape:RoundedRectangleBorder(
                                    borderRadius:BorderRadius.circular(12)
                                ),
                                child: Container(
                                  height:200,
                                  width:200,
                                  decoration:BoxDecoration(
                                    borderRadius:BorderRadius.circular(12),
                                    color:Colors.purple
                                  ),
                                  child:InkWell(onTap:(){
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>T_Shirt10()));
    },
                                      child: Image.asset('assets/images/tshirt10.webp'))
                                ),
                              ),
                              Text('                      T-Shirts Starting',style:TextStyle(fontWeight:FontWeight.bold)),
                              Text('                              At Just ₹399')
                            ],
                          ),
                          SizedBox(
                            width:20
                          ),
                          Column(
                            children: [
                              Card(
                                elevation:10,
                                shape:RoundedRectangleBorder(
                                    borderRadius:BorderRadius.circular(12)
                                ),
                                child: Container(
                                  height:200,
                                  width:200,
                                  decoration:BoxDecoration(
                                    borderRadius:BorderRadius.circular(12),
                                    color:Colors.grey
                                  ),
                                  child:InkWell(onTap:(){
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Items())
    );
    },
                                      child: Image.asset('assets/images/homed.png'))
                                ),
                              ),
                              Text('          Decorative Item Starting',style:TextStyle(fontWeight:FontWeight.bold)),
                              Text('                               At Just ₹299')
                            ],
                          )
                        ]
                      ),
                    )
                  ]
                )
                  ]
                ),
            ),
    );
  }
}
class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 50),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.camera_alt),
                hintText: 'Search for sarees,t-shirts & more',
              ),
            ),
          ),
          Row(
            children: [
              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Mobile())
                );
              }, child: Text('mobiles')),
              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Shoes())
                );
              }, child: Text('shoes')),
              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>TShirts())
                );
              }, child: Text('t-shirts')),
              TextButton(onPressed: () {}, child: Text('laptops')),
              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Watch())
                );
              }, child: Text('watches')),
              TextButton(onPressed: () {
                //add tv class
              }, child: Text('tv'))
            ],
          ),
          Row(
            children: [
              TextButton(onPressed: () {}, child: Text('sarees')),
              TextButton(onPressed: () {}, child: Text('headphones')),
              TextButton(onPressed: () {}, child: Text('bluetooth')),
              TextButton(onPressed: () {}, child: Text('fridge'))
            ],
          ),
        ],
      ),
    );
  }
}

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 120),
            child: Text(
              'Your Cart is Empty :(',
              style: TextStyle(fontSize: 34),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text('Add Items?'))
        ],
      ),
    );
  }
}

class Log_In extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('shopsy'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 30),
            child: Text(
              'Welcome!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 30),
            child: Text('Enter your mobile number to start earning'),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: '+91',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18))),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text('By Continuing,I agree to the Terms of Use and Privacy Policy')
        ],
      ),
    );
  }
}

class Men extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mens Fashion'),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(12)),
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Shirts()));
                  },
                  child: Image.asset('assets/images/shirt2.png')),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(12)),
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TShirts()));
                  },
                  child: Image.asset('assets/images/tshirts.png')),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.grey),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Shoes()));
                  },
                  child: Image.asset('assets/images/shoes.png')),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey,
              ),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Watch()));
                  },
                  child: Image.asset('assets/images/watch.png')),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.grey),
              child: InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Track())
                );
              },
                  child: Image.asset('assets/images/trackpants.png')),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.grey),
              child: InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Wallet())
                );
              },
                  child: Image.asset('assets/images/wallet.png')),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.grey),
              child: InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Jeans())
                );
              },
                  child: Image.asset('assets/images/jeans.png')),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.grey),
              child: InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Cap())
                );
              },
                  child: Image.asset('assets/images/cap.png')),
            )
          ],
        ));
  }
}

class Rakhi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rakhi Store'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
            child: Image.asset('assets/images/rakhi6.png'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
            child: Image.asset('assets/images/rakhi8.png'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
            child: Image.asset('assets/images/rakhi9.png'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
            child: Image.asset('assets/images/rakhi10.png'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
            child: Image.asset('assets/images/rakhi.webp'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
            child: Image.asset('assets/images/rakhi14.png'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
            child: Image.asset('assets/images/rakhi15.png'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
            child: Image.asset('assets/images/rakhi16.png'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
            child: Image.asset('assets/images/rakhi17.png'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
            child: Image.asset('assets/images/rakhi18.png'),
          ),
        ],
      ),
    );
  }
}

class Women extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Womens Fashion'),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Sarees()));
            },
                child: Image.asset('assets/images/sarres.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Kurtis()));
    },
                child: Image.asset('assets/images/kurties.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Top()));
    },
                child: Image.asset('assets/images/top.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Jeans_1()));
    },
                child: Image.asset('assets/images/jeans.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Jewell_1()));
    },
                child: Image.asset('assets/images/jewel2.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Dress_1()));
    },
                child: Image.asset('assets/images/dress1.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>G_Tshirt()));
    },//begin from here
                child: Image.asset('assets/images/tshirt3.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Sandal()));
    },
                child: Image.asset('assets/images/sandal.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Bag()));
    },
                child: Image.asset('assets/images/bag.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Watches()));
    },
                child: Image.asset('assets/images/watches.png')),
          )
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home & Kitchen'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>BedSheet()));
            },
                child: Image.asset('assets/images/bedsheet.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Curtain()));
    },
                child: Image.asset('assets/images/curtain.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Towel()));
    },
                child: Image.asset('assets/images/towel.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Items()));
    },
                child: Image.asset('assets/images/homed.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Clock()));
    },
                child: Image.asset('assets/images/clock.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Lamp()));
    },
                child: Image.asset('assets/images/lamp.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Storage()));
    },
                child: Image.asset('assets/images/cook.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Box()));
    },
                child: Image.asset('assets/images/storage.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Tools()));
    },
                child: Image.asset('assets/images/tools.png')),
          ),
        ],
      ),
    );
  }
}

class Beauty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beauty Products'),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Lotion()));
            },
                child: Image.asset('assets/images/lotion.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Hair()));
    },
                child: Image.asset('assets/images/hair.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Face()));
    },
                child: Image.asset('assets/images/face.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: Image.asset('assets/images/motion.png'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: Image.asset('assets/images/hairc.webp'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: Image.asset('assets/images/shampoo.png'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: Image.asset('assets/images/hairoil.webp'),
          ),
        ],
      ),
    );
  }
}

class Electronics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Electronic Products'),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          children: [
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(12)),
              child: Image.asset('assets/images/headphone.webp'),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(12)),
              child: Image.asset('assets/images/hairdryer.webp'),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(12)),
              child: Image.asset('assets/images/cover1.png'),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(12)),
              child: Image.asset('assets/images/charger.png'),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(12)),
              child: Image.asset('assets/images/bluetooth.png'),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(12)),
              child: Image.asset('assets/images/guard.png'),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(12)),
              child: Image.asset('assets/images/power.png'),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(12)),
              child: Image.asset('assets/images/swatch.webp'),
            ),
          ],
        ));
  }
}

class Appliances extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Appliances'),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          children: [
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(12)),
              child: Image.asset('assets/images/cooler.webp'),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(12)),
              child: Image.asset('assets/images/ref.png'),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(12)),
              child: Image.asset('assets/images/television.webp'),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(12)),
              child: Image.asset('assets/images/wsh.png'),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(12)),
              child: Image.asset('assets/images/kitchen.png'),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(12)),
              child: Image.asset('assets/images/juicer.webp'),
            ),
          ],
        ));
  }
}

class Toys extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Toys'),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          children: [
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.grey),
              child: Image.asset('assets/images/kids.png'),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.grey),
              child: Image.asset('assets/images/car.png'),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.grey),
              child: Image.asset('assets/images/toy.png'),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.grey),
              child: Image.asset('assets/images/diapers.webp'),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.grey),
              child: Image.asset('assets/images/footwear.png'),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.grey),
              child: Image.asset('assets/images/shoes.gif'),
            )
          ],
        ));
  }
}

class Furniture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Furnitures'),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: Image.asset('assets/images/chairs.webp'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: Image.asset('assets/images/sofa.webp'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: Image.asset('assets/images/chair.webp'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: Image.asset('assets/images/sofas.png'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: Image.asset('assets/images/bed1.png'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: Image.asset('assets/images/shelf1.webp'),
          )
        ],
      ),
    );
  }
}

class Mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobiles'),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
            child: Image.asset('assets/images/oneplus.webp'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
            child: Image.asset('assets/images/samsung.webp'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
            child: Image.asset('assets/images/oppo.webp'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
            child: Image.asset('assets/images/vivo.png'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
            child: Image.asset('assets/images/mi.png'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
            child: Image.asset('assets/images/iphone.png'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
            child: Image.asset('assets/images/sony.webp'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
            child: Image.asset('assets/images/moto.png'),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
            child: Image.asset('assets/images/realme.png'),
          )
        ],
      ),
    );
  }
}

class Shirts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shirts'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey,
            ),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ShirtDescPage('assets/images/shirt3.png', 'Denim', 'shirtDesc', '304', '3.9', '94,746'))
              );
            },
                child: Image.asset('assets/images/shirt3.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey,
            ),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Shirt_6())
              );
            },
                child: Image.asset('assets/images/shirt6.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey,
            ),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Shirt_7())
              );
            },
                child: Image.asset('assets/images/shirt7.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey,
            ),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Shirt_8())
              );
            },
                child: Image.asset('assets/images/shirt8.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey,
            ),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Shirt_10())
              );
            },
                child: Image.asset('assets/images/shirt10.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey,
            ),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Shirt_11())
              );
            },
                child: Image.asset('assets/images/shirt11.webp')),
          ),
        ],
      ),
    );
  }
}

class TShirts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('T-Shirts'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>T_Shirt5())
              );
            },
                child: Image.asset('assets/images/tshirt5.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>T_Shirt7())
              );
            },
                child: Image.asset('assets/images/tshirt7.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>T_Shirt10())
              );
            },
                child: Image.asset('assets/images/tshirt10.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>T_Shirt12())
              );
            },
                child: Image.asset('assets/images/tshirt12.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>T_Shirt13())
              );
            },
                child: Image.asset('assets/images/tshirt13.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>T_Shirt15())
              );
            },
                child: Image.asset('assets/images/tshirt15.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>T_Shirt16())
              );
            },
                child: Image.asset('assets/images/tshirt16.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>T_Shirt17())
              );
            },
                child: Image.asset('assets/images/tshirt17.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>T_Shirt18())
              );
            },
                child: Image.asset('assets/images/tshirt18.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>T_Shirt19())
              );
            },
                child: Image.asset('assets/images/tshirt19.webp')),
          )
        ],
      ),
    );
  }
}

class Shoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoes'),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Shoes_2())
              );
            },
                child: Image.asset('assets/images/shoes2.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Shoes_3())
              );
            },
                child: Image.asset('assets/images/shoes3.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Shoes_4())
              );
            },
                child: Image.asset('assets/images/shoes4.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Shoes_5())
              );
            },
                child: Image.asset('assets/images/shoes5.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Shoes_6())
              );
            },
                child: Image.asset('assets/images/shoes6.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Shoes_8())
              );
            },
                child: Image.asset('assets/images/shoes8.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Shoes_9())
              );
            },
                child: Image.asset('assets/images/shoes9.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Shoes_11())
              );
            },
                child: Image.asset('assets/images/shoes11.png')),
          )
        ],
      ),
    );
  }
}

class Watch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watches'),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Watch_1())
              );
            },
                child: Image.asset('assets/images/watch1.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Watch_2())
              );
            },
                child: Image.asset('assets/images/watch2.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Watch_3())
              );
            },
                child: Image.asset('assets/images/watch3.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Watch_5())
              );
            },
                child: Image.asset('assets/images/watch5.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Watch_6())
              );
            },
                child: Image.asset('assets/images/watch6.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Watch_7())
              );
            },
                child: Image.asset('assets/images/watch7.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Watch_8())
              );
            },
                child: Image.asset('assets/images/watch8.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Watch_9())
              );
            },
                child: Image.asset('assets/images/watch9.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Watch_10())
              );
            },
                child: Image.asset('assets/images/watch10.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.grey),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Watch_11())
              );
            },
                child: Image.asset('assets/images/watch11.webp')),
          )
        ],
      ),
    );
  }
}
class Track extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Track Pants'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
        children: [
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey
            ),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Track_1())
              );
            },
                child: Image.asset('assets/images/track1.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey
            ),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Track_3())
              );
            },
                child: Image.asset('assets/images/track3.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey
            ),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Track_4())
              );
            },
                child: Image.asset('assets/images/track4.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey
            ),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Track_6())
              );
            },
                child: Image.asset('assets/images/track6.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey
            ),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Track_7())
              );
            },
                child: Image.asset('assets/images/track7.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey
            ),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Track_8())
              );
            },
                child: Image.asset('assets/images/track8.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey
            ),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Track_9())
              );
            },
                child: Image.asset('assets/images/track9.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey
            ),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Track_10())
              );
            },
                child: Image.asset('assets/images/track10.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey
            ),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Track_11())
              );
            },
                child: Image.asset('assets/images/track11.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey
            ),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Track_12())
              );
            },
                child: Image.asset('assets/images/track12.png')),
          )
        ],
      ),
    );
  }
}
class Wallet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallets'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Wallet_1()));
            },
                child: Image.asset('assets/images/wallet1.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Wallet_2()));
    },
                child: Image.asset('assets/images/wallet2.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Wallet_3()));
    },
                child: Image.asset('assets/images/wallet3.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Wallet_4()));
    },
                child: Image.asset('assets/images/wallet.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Wallet_5()));
    },
                child: Image.asset('assets/images/wallet4.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Wallet_6()));
    },
                child: Image.asset('assets/images/wallet5.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Wallet_7()));
    },
                child: Image.asset('assets/images/wallet6.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Wallet_8()));
    },
                child: Image.asset('assets/images/wallet7.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Wallet_9()));
    },
                child: Image.asset('assets/images/wallet8.png')),
          )
        ],
      ),
    );
  }
}
class Jeans extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jeans'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
        children: [
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(12)
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Jeans1())
              );
            },
                child: Image.asset('assets/images/jeans1.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12)
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Jeans2()));
    },
                child: Image.asset('assets/images/jeans2.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12)
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Jeans3()));
    },
                child: Image.asset('assets/images/jeans3.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12)
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Jeans4()));
    },
                child: Image.asset('assets/images/jeans5.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12)
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Jeans5()));
    },
                child: Image.asset('assets/images/jeans6.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12)
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Jeans6()));
    },
                child: Image.asset('assets/images/jeans7.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12)
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Jeans7()));
    },
                child: Image.asset('assets/images/jeans8.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12)
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Jeans8()));
    },
                child: Image.asset('assets/images/jeans9.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12)
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Jeans9()));
    },
                child: Image.asset('assets/images/jeans10.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12)
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Jeans10()));
    },
                child: Image.asset('assets/images/jeans11.png')),
          )
        ],
      ),
    );
  }
}
class Cap extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Caps'),
      ),
      body:GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
        children: [
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Cap1()));
            },
                child: Image.asset('assets/images/cap1.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Cap2()));
    },
                child: Image.asset('assets/images/cap2.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Cap3()));
    },
                child: Image.asset('assets/images/cap3.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Cap4()));
    },
                child: Image.asset('assets/images/cap4.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Cap5()));
    },
                child: Image.asset('assets/images/cap5.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Cap6()));
    },
                child: Image.asset('assets/images/cap6.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Cap7()));
    },
                child: Image.asset('assets/images/cap7.webp')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Cap8()));
    },
                child: Image.asset('assets/images/cap8.png')),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey
            ),
            child: InkWell(onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Cap9()));
    },
                child: Image.asset('assets/images/cap9.webp')),
          )
        ],
      )
    );
  }
}

class Shirt_6 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shirts'),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/shirt6.png'),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('Qlonz Store',style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('Men Regular Fit Solid Spread Collar\nCasual Shirt',style: TextStyle(
              fontSize: 18,
            ),),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('₹605',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green
                  ),
                  child: Center(child: Text('4.5',style: TextStyle(
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('97,547 ratings')
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 500,
            height: 1,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text('  Size',style: TextStyle(
                  fontSize: 18,
                  fontWeight:FontWeight.bold
              ),),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 230),
                child: Image.asset('assets/images/height.png',height: 40,),
              ),
              SizedBox(
                width: 10,
              ),
              Text('Size Chart',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
              ),)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('S',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('M',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('L',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('XL',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('XXL',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 1,
            width: 400,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
class Shirt_7 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shirts'),
      ),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/shirt7.webp'),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('Zara',style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('Men Regular Fit Solid Spread Collar\nCasual Shirt',style: TextStyle(
              fontSize: 18,
            ),),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('₹900',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green
                  ),
                  child: Center(child: Text('4.0',style: TextStyle(
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('80,447 ratings')
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 500,
            height: 1,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text('  Size',style: TextStyle(
                  fontSize: 18,
                  fontWeight:FontWeight.bold
              ),),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 230),
                child: Image.asset('assets/images/height.png',height: 40,),
              ),
              SizedBox(
                width: 10,
              ),
              Text('Size Chart',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
              ),)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('S',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('M',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('L',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('XL',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('XXL',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 1,
            width: 400,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
class Shirt_8 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shirts'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/shirt8.webp'),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('Diesal',style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('Men Regular Fit Solid Spread Collar\nCasual Shirt',style: TextStyle(
              fontSize: 18,
            ),),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('₹450',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green
                  ),
                  child: Center(child: Text('3.5',style: TextStyle(
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('70,847 ratings')
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 500,
            height: 1,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text('  Size',style: TextStyle(
                  fontSize: 18,
                  fontWeight:FontWeight.bold
              ),),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 230),
                child: Image.asset('assets/images/height.png',height: 40,),
              ),
              SizedBox(
                width: 10,
              ),
              Text('Size Chart',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
              ),)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('S',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('M',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('L',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('XL',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('XXL',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 1,
            width: 400,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
class Shirt_10 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shirts'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/shirt10.webp'),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('X-Men',style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('Men Regular Fit Solid Spread Collar\nCasual Shirt',style: TextStyle(
              fontSize: 18,
            ),),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('₹450',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green
                  ),
                  child: Center(child: Text('3.8',style: TextStyle(
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('60,927 ratings')
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 500,
            height: 1,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text('  Size',style: TextStyle(
                  fontSize: 18,
                  fontWeight:FontWeight.bold
              ),),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 230),
                child: Image.asset('assets/images/height.png',height: 40,),
              ),
              SizedBox(
                width: 10,
              ),
              Text('Size Chart',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
              ),)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('S',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('M',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('L',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('XL',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('XXL',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 1,
            width: 400,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
class Shirt_11 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shirts'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/shirt11.webp'),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('Parklees',style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('Men Regular Fit Solid Spread Collar\nCasual Shirt',style: TextStyle(
              fontSize: 18,
            ),),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('₹550',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green
                  ),
                  child: Center(child: Text('2.6',style: TextStyle(
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('40,287 ratings')
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 500,
            height: 1,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text('  Size',style: TextStyle(
                  fontSize: 18,
                  fontWeight:FontWeight.bold
              ),),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 230),
                child: Image.asset('assets/images/height.png',height: 40,),
              ),
              SizedBox(
                width: 10,
              ),
              Text('Size Chart',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
              ),)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('S',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('M',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('L',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('XL',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('XXL',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 1,
            width: 400,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
class T_Shirt5 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('T-Shirts'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('assets/images/tshirt5.png')),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Zara',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Men Regular Fit Solid Spread Collar\nCasual Shirt',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹640',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green
                    ),
                    child: Center(child: Text('3.9',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('47,887 ratings')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('  Size',style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold
                ),),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 230),
                  child: Image.asset('assets/images/height.png',height: 40,),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Size Chart',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('S',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('M',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('L',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('XL',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('XXL',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: 400,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
class T_Shirt7 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('T-Shirts'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/tshirt7.png'),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('Back Yard',style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('Men Regular Fit Solid Spread Collar\nCasual t-Shirt',style: TextStyle(
              fontSize: 18,
            ),),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('₹450',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green
                  ),
                  child: Center(child: Text('4.6',style: TextStyle(
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('40,287 ratings')
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 500,
            height: 1,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text('  Size',style: TextStyle(
                  fontSize: 18,
                  fontWeight:FontWeight.bold
              ),),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 230),
                child: Image.asset('assets/images/height.png',height: 40,),
              ),
              SizedBox(
                width: 10,
              ),
              Text('Size Chart',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
              ),)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('S',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('M',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('L',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('XL',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('XXL',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 1,
            width: 400,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
class T_Shirt10 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('T-Shirts'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/tshirt10.webp'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Boys World',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Men Regular Fit Solid Spread Collar\nCasual t-Shirt',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹750',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green
                    ),
                    child: Center(child: Text('4.9',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('55,187 ratings')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('  Size',style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold
                ),),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 230),
                  child: Image.asset('assets/images/height.png',height: 40,),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Size Chart',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('S',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('M',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('L',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('XL',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('XXL',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: 400,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
class T_Shirt12 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('T-Shirts'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset('assets/images/tshirt12.png')),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('Store World',style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('Men Regular Fit Solid Spread Collar\nCasual t-Shirt',style: TextStyle(
              fontSize: 18,
            ),),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('₹950',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green
                  ),
                  child: Center(child: Text('3.7',style: TextStyle(
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('57,875 ratings')
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 500,
            height: 1,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text('  Size',style: TextStyle(
                  fontSize: 18,
                  fontWeight:FontWeight.bold
              ),),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 230),
                child: Image.asset('assets/images/height.png',height: 40,),
              ),
              SizedBox(
                width: 10,
              ),
              Text('Size Chart',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
              ),)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('S',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('M',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('L',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('XL',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('XXL',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 1,
            width: 400,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
class T_Shirt13 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('T-Shirts'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/tshirt13.png'),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('Lee Cooper',style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('Men Regular Fit Solid Spread Collar\nCasual T-Shirt',style: TextStyle(
              fontSize: 18,
            ),),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('₹850',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green
                  ),
                  child: Center(child: Text('4.2',style: TextStyle(
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('35,463 ratings')
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 500,
            height: 1,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text('  Size',style: TextStyle(
                  fontSize: 18,
                  fontWeight:FontWeight.bold
              ),),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 230),
                child: Image.asset('assets/images/height.png',height: 40,),
              ),
              SizedBox(
                width: 10,
              ),
              Text('Size Chart',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
              ),)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('S',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('M',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('L',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('XL',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('XXL',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 1,
            width: 400,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
class T_Shirt15 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('T-Shirts'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/tshirt15.png'),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('Aliens World',style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('Men Regular Fit Solid Spread Collar\nCasual T-Shirt',style: TextStyle(
              fontSize: 18,
            ),),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('₹900',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green
                  ),
                  child: Center(child: Text('4.5',style: TextStyle(
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('47,321 ratings')
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 500,
            height: 1,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text('  Size',style: TextStyle(
                  fontSize: 18,
                  fontWeight:FontWeight.bold
              ),),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 230),
                child: Image.asset('assets/images/height.png',height: 40,),
              ),
              SizedBox(
                width: 10,
              ),
              Text('Size Chart',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
              ),)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('S',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('M',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('L',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('XL',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('XXL',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 1,
            width: 400,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
class T_Shirt16 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('T-Shirts'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset('assets/images/tshirt16.webp')),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('Mens Fashion',style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('Men Regular Fit Solid Spread Collar\nCasual T-Shirt',style: TextStyle(
              fontSize: 18,
            ),),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('₹1200',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green
                  ),
                  child: Center(child: Text('3.6',style: TextStyle(
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('44,650 ratings')
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 500,
            height: 1,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text('  Size',style: TextStyle(
                  fontSize: 18,
                  fontWeight:FontWeight.bold
              ),),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 230),
                child: Image.asset('assets/images/height.png',height: 40,),
              ),
              SizedBox(
                width: 10,
              ),
              Text('Size Chart',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
              ),)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('S',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('M',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('L',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('XL',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('XXL',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 1,
            width: 400,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
class T_Shirt17 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('T-Shirts'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/tshirt17.webp'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Aliens World',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Men Regular Fit Solid Spread Collar\nCasual T-Shirt',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹950',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green
                    ),
                    child: Center(child: Text('3.0',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('40,287 ratings')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('  Size',style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold
                ),),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 230),
                  child: Image.asset('assets/images/height.png',height: 40,),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Size Chart',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('S',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('M',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('L',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('XL',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('XXL',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: 400,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
class T_Shirt18 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('T-Shirts'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/tshirt18.webp'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Back Yard',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Men Regular Fit Solid Spread Collar\nCasual T-Shirt',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹320',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green
                    ),
                    child: Center(child: Text('4.7',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('43,387 ratings')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('  Size',style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold
                ),),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 230),
                  child: Image.asset('assets/images/height.png',height: 40,),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Size Chart',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('S',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('M',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('L',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('XL',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('XXL',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: 400,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
class T_Shirt19 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('T-Shirts'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/tshirt19.webp'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Lee Cooper',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Men Regular Fit Solid Spread Collar\nCasual T-Shirt',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹850',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green
                    ),
                    child: Center(child: Text('4.4',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('75,657 ratings')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('  Size',style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold
                ),),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 230),
                  child: Image.asset('assets/images/height.png',height: 40,),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Size Chart',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('S',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('M',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('L',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('XL',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('XXL',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: 400,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
class Shoes_2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/shoes2.png'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Air Force 1',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Nike Men Regular Fit Solid Spread White\nCasual Shoes',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹16000',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green
                    ),
                    child: Center(child: Text('5.0',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('90,000 ratings')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('  Size',style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold
                ),),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 230),
                  child: Image.asset('assets/images/height.png',height: 40,),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Size Chart',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('6',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('8',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('10',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('12',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('13',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: 400,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
class Shoes_3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/shoes3.png'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Nike Zoomx',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Nike Men Regular Fit Solid Spread White\nCasual Shoes',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹12000',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green
                    ),
                    child: Center(child: Text('4.5',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('70,000 ratings')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('  Size',style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold
                ),),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 230),
                  child: Image.asset('assets/images/height.png',height: 40,),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Size Chart',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('6',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('8',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('10',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('12',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('13',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: 400,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
class Shoes_4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/shoes4.webp'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Brooks',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Nike Men Regular Fit Solid Spread White\nCasual Shoes',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹8000',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green
                    ),
                    child: Center(child: Text('4.0',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('80,000 ratings')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('  Size',style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold
                ),),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 230),
                  child: Image.asset('assets/images/height.png',height: 40,),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Size Chart',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('6',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('8',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('10',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('12',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('13',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: 400,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}

class Shoes_5 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/shoes5.png'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Foot Wear',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Nike Men Regular Fit Solid Spread White\nCasual Shoes',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹4000',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green
                    ),
                    child: Center(child: Text('3.0',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('50,000 ratings')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('  Size',style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold
                ),),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 230),
                  child: Image.asset('assets/images/height.png',height: 40,),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Size Chart',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('6',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('8',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('10',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('12',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('13',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: 400,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
class Shoes_6 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('assets/images/shoes6.webp')),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Brooks',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Nike Men Regular Fit Solid Spread White\nCasual Shoes',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹7000',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green
                    ),
                    child: Center(child: Text('3.5',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('40,000 ratings')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('  Size',style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold
                ),),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 230),
                  child: Image.asset('assets/images/height.png',height: 40,),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Size Chart',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('6',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('8',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('10',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('12',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('13',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: 400,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
class Shoes_8 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/shoes8.png'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Nike',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Nike Men Regular Fit Solid Spread White\nCasual Shoes',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹11000',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green
                    ),
                    child: Center(child: Text('4.8',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('85,000 ratings')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('  Size',style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold
                ),),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 230),
                  child: Image.asset('assets/images/height.png',height: 40,),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Size Chart',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('6',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('8',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('10',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('12',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('13',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: 400,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
class Shoes_9 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/shoes9.png'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Nike',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Nike Men Regular Fit Solid Spread White\nCasual Shoes',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹12000',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green
                    ),
                    child: Center(child: Text('4.7',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('85,000 ratings')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('  Size',style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold
                ),),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 230),
                  child: Image.asset('assets/images/height.png',height: 40,),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Size Chart',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('6',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('8',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('10',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('12',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('13',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: 400,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
class Shoes_11 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/shoes11.png'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Nike',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Nike Men Regular Fit Solid Spread White\nCasual Shoes',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹5000',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green
                    ),
                    child: Center(child: Text('3.2',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('35,000 ratings')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('  Size',style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold
                ),),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 230),
                  child: Image.asset('assets/images/height.png',height: 40,),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Size Chart',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('6',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('8',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('10',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('12',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('13',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: 400,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
class Watch_1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watches'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/watch1.webp'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Swadesi Stuff',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Circle Black Dial Analog Silicon\nStrap Addi-For Boys',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹512',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green
                    ),
                    child: Center(child: Text('4.2',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('70,000 ratings')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('  Variety',style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold
                ),),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 230),
                  child: Image.asset('assets/images/color.png',height: 40,),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Colors',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('B',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('P',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('G',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('Y',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('P',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: 400,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
class Watch_2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watches'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/watch2.webp'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Nixon',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Circle Black Dial Analog Silicon\nStrap Addi-For Boys',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹350',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green
                    ),
                    child: Center(child: Text('3.2',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('20,000 ratings')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('  Variety',style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold
                ),),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 230),
                  child: Image.asset('assets/images/color.png',height: 40,),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Colors',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('B',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('P',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('G',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('Y',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('P',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: 400,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
class Watch_3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watches'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/watch3.png'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('White Stone',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Square White Smart Watch with Silicon\nStrap Addi',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹1800',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green
                    ),
                    child: Center(child: Text('4.9',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('60,000 ratings')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('  Variety',style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold
                ),),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 230),
                  child: Image.asset('assets/images/color.png',height: 40,),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Colors',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('B',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('P',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('G',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('Y',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('P',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: 400,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
class Watch_5 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watches'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('assets/images/watch5.webp')),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('White Stone',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Circle Golden Dial Analog Silicon\nStrap Addi-For Couples',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹500',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green
                    ),
                    child: Center(child: Text('4.0',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('50,000 ratings')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('  Variety',style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold
                ),),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 230),
                  child: Image.asset('assets/images/color.png',height: 40,),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Colors',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('B',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('P',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('G',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('Y',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('P',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: 400,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
class Watch_6 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watches'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/watch6.webp'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Titan',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Circle Golden Dial Analog Silicon\nStrap Addi-For Couples',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹350',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green
                    ),
                    child: Center(child: Text('3.4',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('70,000 ratings')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('  Variety',style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold
                ),),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 230),
                  child: Image.asset('assets/images/color.png',height: 40,),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Colors',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('B',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('P',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('G',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('Y',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('P',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: 400,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
class Watch_7 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watches'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('assets/images/watch7.webp')),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('White Stone',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Square Blue Smart Watch With Silicon\nStrap Addi-For Boys',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹1500',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green
                    ),
                    child: Center(child: Text('4.6',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('90,000 ratings')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('  Variety',style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold
                ),),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 230),
                  child: Image.asset('assets/images/color.png',height: 40,),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Colors',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('B',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('P',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('G',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('Y',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('P',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: 400,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}

class Watch_8 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watches'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('assets/images/watch8.webp')),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Police',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Circle Golden Dial With Silicon\nStrap Addi-For Boys',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹900',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green
                    ),
                    child: Center(child: Text('4.2',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('50,000 ratings')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('  Variety',style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold
                ),),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 230),
                  child: Image.asset('assets/images/color.png',height: 40,),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Colors',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('B',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('P',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('G',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('Y',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('P',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: 400,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}