//Wap in Flutter To Design A Cash App
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 900,
        width: 500,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 10),
                    child: Icon(Icons.account_circle,
                        size: 40, color: Colors.grey),
                  ),
                  Text('Hello Jack',
                      style: TextStyle(fontSize: 20, color: Colors.grey)),
                  SizedBox(width: 200),
                  Icon(Icons.notifications_none, color: Colors.white)
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 50),
                child: Text('Welcome Back!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white)),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 20),
                child: Stack(children: [
                  Container(
                    height: 180,
                    width: 355,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white12),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            start: 20, top: 50),
                        child:
                            Image.asset('assets/images/arrow.png', height: 10),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.only(top: 50, start: 5),
                        child: Text('2.70% Today',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.orangeAccent)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            top: 70, start: 20),
                        child: Text('₹12,670.90',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 40)),
                      ),
                      Column(
                        children: [],
                      )
                    ],
                  )
                ]),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 320),
                child: CircleAvatar(
                  child: Text('+'),
                  backgroundColor: Colors.blue,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 20),
                child: Text('Actions',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 20),
                    child: Stack(children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        height: 130,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset(
                          'assets/images/coins.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            start: 10, top: 95),
                        child: Text('Receive',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25)),
                      )
                    ]),
                  ),
                  SizedBox(width: 20),
                  Stack(
                    children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        height: 130,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset('assets/images/transfer.png',
                            fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            top: 95, start: 10),
                        child: Text('Send',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold)),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 30),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 20),
                        child: Stack(children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            height: 130,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Image.asset('assets/images/swap.jpg',
                                fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                                top: 100, start: 10),
                            child: Text('Swap',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25)),
                          )
                        ]),
                      ),
                      SizedBox(width: 20),
                      Stack(children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          height: 130,
                          width: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset('assets/images/earn.jpeg',
                              fit: BoxFit.cover),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                              start: 10, top: 100),
                          child: Text('Earn',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                        )
                      ])
                    ],
                  ),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 200),
                    child: Text('Top Movers',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 26)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 20),
                        child: Stack(children: [
                          Container(
                            height: 80,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white10),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                                top: 20, start: 10),
                            child:
                                Icon(Icons.add, color: Colors.white, size: 20),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.only(
                                start: 30, top: 20),
                            child: Text('34.98%',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Column(
                            children: [
                              SizedBox(height: 45),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text('BTC',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 10)),
                                  SizedBox(width: 5),
                                  Text('₹21.5 Cr',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 10)),
                                ],
                              ),
                            ],
                          )
                        ]),
                      ),
                      SizedBox(width: 40),
                      Stack(children: [
                        Container(
                          height: 80,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white10),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  top: 20, start: 10),
                              child: Icon(Icons.add,
                                  size: 20, color: Colors.white),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsetsDirectional.only(top: 20),
                              child: Text('54.13%',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(height: 40),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                      start: 30),
                                  child: Text(
                                    'Chain',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text('₹34.90 Cr',
                                    style: TextStyle(color: Colors.white))
                              ],
                            ),
                          ],
                        )
                      ])
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
