//Wap in Flutter To Design Food App
import 'package:flutter/material.dart';

import 'buffalo.dart';

main() {
  runApp(My_App());
}

class My_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Scaffold(
          appBar: AppBar(
            title: Text('Maleno',style: TextStyle(color:Colors.white),),
            backgroundColor: Colors.blue,
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.notification_add_outlined,color: Colors.white,size: 25))
            ],
          ),
          body: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                      )
                  ),
                ),
              ),
              Stack(
                children: [
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      height: 150,
                      width: 350,
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                      child: Image.asset(
                        'assets/images/cows.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 10, top: 10),
                    child: Text(
                      'Grab Your\nDairy Items',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(top: 80, start: 10),
                    child: Text('Discount Upto',
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(top: 80, start: 110),
                    child: Text(
                      '50% off',
                      style: TextStyle(fontSize: 15, color: Colors.yellow),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 20),
                    child: Stack(children: [
                      Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset(
                            'assets/images/milk.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(height: 85),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(start:30),
                            child: Text(
                              'Milk',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Stack(children: [
                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset(
                          'assets/images/ghee.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 85),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start:30),
                          child: Text(
                            'Ghee',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ]),
                  SizedBox(
                    width: 10,
                  ),
                  Stack(children: [
                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset(
                          'assets/images/dahi.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 85),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start:30),
                          child: Text(
                            'Dahi',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ]),
                  SizedBox(
                    width: 10,
                  ),
                  Stack(children: [
                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset('assets/images/buttermilk.jpg',
                            fit: BoxFit.cover),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 85),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start:13),
                          child: Text(
                            'Butter Milk',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ])
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 23),
                child: Row(
                  children: [
                    Text(
                      'Popular Now',
                      style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Image.asset('assets/images/fire.gif', height: 22)
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  SizedBox(width: 14),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Stack(children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        height: 200,
                        width: 170,
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                        child: Image.asset(
                          'assets/images/cowsmilk.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),

                      Column(
                        children: [
                          SizedBox(height: 180),
                          Stack(
                              children:[
                                Container(
                                  height: 40,
                                  width: 170,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(13),bottomRight: Radius.circular(13)),
                                      color: Colors.blue
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(top:13,start:8),
                                      child: Text('Buffalo Milk',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white)),
                                    ),
                                    SizedBox(width: 3),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(top:8),
                                      child: Text('|',style: TextStyle(fontSize: 25,color: Colors.white),),
                                    ),
                                    SizedBox(width: 3),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(top:16),
                                      child: Text('₹200L',style: TextStyle(fontSize: 16,color: Colors.white),),
                                    )
                                  ],
                                )
                              ]
                          ),
                        ],
                      )
                    ]),
                  ),
                  SizedBox(width: 10),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Stack(children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        height: 200,
                        width: 170,
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                        child: Image.asset(
                          'assets/images/camelmilk.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(height: 180),
                          Stack(
                            children:[
                              Container(
                                height: 40,
                                width: 170,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(13),bottomRight: Radius.circular(13)),
                                    color: Colors.blue
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.only(top:13,start:8),
                                    child: Text('Camel Milk',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white)),
                                  ),
                                  SizedBox(width: 7),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.only(top:8),
                                    child: Text('|',style: TextStyle(fontSize: 25,color: Colors.white),),
                                  ),
                                  SizedBox(width: 4),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.only(top:16),
                                    child: Text('₹400L',style: TextStyle(fontSize: 16,color: Colors.white),),
                                  )
                                ],
                              )
                            ]
                          ),
                        ],
                      )
                    ]),
                  )
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(width: 14),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Stack(children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        height: 200,
                        width: 170,
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                        child: Image.asset(
                          'assets/images/Buttermilk1.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(height: 180),
                          Stack(
                              children:[
                                Container(
                                  height: 40,
                                  width: 170,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(13),bottomRight: Radius.circular(13)),
                                      color: Colors.blue
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(top:13,start:8),
                                      child: Text('Butter Milk',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white)),
                                    ),
                                    SizedBox(width: 3),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(top:8),
                                      child: Text('|',style: TextStyle(fontSize: 25,color: Colors.white),),
                                    ),
                                    SizedBox(width: 8),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(top:16),
                                      child: Text('₹20L',style: TextStyle(fontSize: 16,color: Colors.white),),
                                    )
                                  ],
                                )
                              ]
                          ),
                        ],
                      )
                    ]),
                  ),
                  SizedBox(width: 10),
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Stack(children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        height: 200,
                        width: 170,
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                        child: Image.asset(
                          'assets/images/Ghee.webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(height: 180),
                          Stack(
                              children:[
                                Container(
                                  height: 40,
                                  width: 170,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(13),bottomRight: Radius.circular(13)),
                                      color: Colors.blue
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(top:13,start:8),
                                      child: Text('Cow Ghee',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white)),
                                    ),
                                    SizedBox(width: 7),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(top:8),
                                      child: Text('|',style: TextStyle(fontSize: 25,color: Colors.white),),
                                    ),
                                    SizedBox(width: 4),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(top:16),
                                      child: Text('₹800L',style: TextStyle(fontSize: 16,color: Colors.white),),
                                    )
                                  ],
                                )
                              ]
                          ),
                        ],
                      )
                    ]),
                  )
                ],
              ),
              SizedBox(height: 30),
              Stack(
                children: [
                  Card(
                    elevation: 12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      height: 150,
                      width: 350,
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                      child: Image.asset(
                        'assets/images/Numerous-benefits-of-A2-Cow-Ghee-1024x681.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
          drawer: Drawer(
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.blue,
                      Colors.white
                    ],
                    begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight
                    )
                  ), //BoxDecoration
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.transparent
                      // gradient: LinearGradient(colors: [
                      //   Colors.blue,
                      //   Colors.white
                      // ],
                      //     begin: Alignment.bottomLeft,
                      //     end: Alignment.bottomRight
                      // )

                    ),
                    accountName: Text(
                      "Sujal Dave",
                      style: TextStyle(fontSize: 18),
                    ),
                    accountEmail: Text("sujaldave880@gmail.com"),
                    currentAccountPictureSize: Size.square(50),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text(
                        "S",
                        style: TextStyle(fontSize: 30.0, color: Colors.blue),
                      ), //Text
                    ), //circleAvatar
                  ), //UserAccountDrawerHeader
                ), //DrawerHeader
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text(' My Profile '),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.book),
                  title: const Text(' Subscription '),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.workspace_premium),
                  title: const Text('Home'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.video_label),
                  title: const Text('Orders'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.edit),
                  title: const Text('Edit Profile'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('LogOut'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ), //Deawer
        ),
    );
  }
}
