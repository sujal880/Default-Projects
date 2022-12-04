//Wap in Flutter To Design A Tip Calculator
import 'package:flutter/material.dart';
import 'package:untitled/gym.dart';

main() {
  runApp(Tip());
}

class Tip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tip Calculator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/hat2.png',
                  width: 50,
                  height: 70,
                ),
                RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "Mr",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                          fontFamily: 'Monteserrat')),
                  TextSpan(
                      text: "Tip",
                      style: TextStyle(
                          fontFamily: 'Monteserrat',
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: "\n Calculator",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Monteserrat',
                      ))
                ]))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Card(
              elevation: 8,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                height: 210,
                width: 360,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: RichText(
                          text: TextSpan(
                              text: 'Totalp/person',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Monteserrat',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold))),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.only(start: 100, top: 10),
                      child: Row(
                        children: [
                          Padding(
                              padding:
                                  const EdgeInsetsDirectional.only(top: 13)),
                          Image.asset(
                            'assets/images/rs.png',
                            height: 25,
                          ),
                          RichText(
                              text: TextSpan(
                                  text: '000',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 50,
                                      fontFamily: 'Monteserrat',
                                      color: Colors.black))),
                        ],
                      ),
                    ),
                    Container(
                      width: 280,
                      color: Colors.black26,
                      height: 2,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                              top: 15, start: 25, end: 160),
                          child: Container(
                            child: Text(
                              'Total bill',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Monteserrat',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.all(8.0),
                          child: Container(
                            child: Text(
                              'Total Tip',
                              style: TextStyle(
                                  fontFamily: 'Monteserrat', fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                              top: 5, start: 20),
                          child: Image.asset(
                            'assets/images/rs.png',
                            height: 20,
                          ),
                        ),
                        RichText(
                            text: TextSpan(
                                text: '000',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Monteserrat',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.greenAccent))),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 185),
                          child: Image.asset(
                            'assets/images/rs.png',
                            height: 20,
                          ),
                        ),
                        RichText(
                            text: TextSpan(
                                text: '000',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Monteserrat',
                                    fontSize: 20,
                                    color: Colors.greenAccent)))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 20, start: 40),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: 'Enter',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: 'Monteserrat',
                            color: Colors.black)),
                    TextSpan(
                        text: "\nYour bill",
                        style: TextStyle(
                            fontFamily: 'Monteserrat',
                            fontSize: 20,
                            color: Colors.black))
                  ])),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    width: 217,
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.currency_rupee,
                            color: Colors.black,
                            size: 30,
                          ),
                          hintText: '00.0',
                          label: Text(
                            'Amount',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          fillColor: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 20, start: 40),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Choose',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: 'Monteserrat',
                            color: Colors.black)),
                    TextSpan(
                        text: '\nYour Tip',
                        style: TextStyle(fontSize: 18, color: Colors.black))
                  ])),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    width: 70,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.greenAccent),
                    child: Center(
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: '10',
                              style: TextStyle(
                                  fontSize: 26,
                                  fontFamily: 'Monteserrat',
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: '%',
                              style: TextStyle(
                                fontSize: 17,
                              ))
                        ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 70,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.greenAccent),
                    child: Center(
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: '15',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Monteserrat',
                              )),
                          TextSpan(
                              text: '%',
                              style: TextStyle(
                                fontSize: 17,
                              ))
                        ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 70,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.greenAccent),
                    child: Center(
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: '20',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Monteserrat',
                              )),
                          TextSpan(
                              text: '%',
                              style: TextStyle(
                                fontSize: 17,
                              ))
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start:135),
              child: Container(
                width: 220,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.greenAccent
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Center(
                      child: Text('Custom Tip',style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),),
                    )
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 20,start: 30),
              child: Row(
                children: [
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Split',style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontFamily: 'Monteserrat',
                        fontWeight: FontWeight.bold
                      )
                      ),
                      TextSpan(
                          text: '\nThe Total',style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                      )
                      )
                    ]
                  )),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 40),
                    child: Container(
                      width:50,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(10)
                        ),
                        color: Colors.greenAccent
                      ),
                      child: Center(
                        child: Text('-',style:TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white
                        )),
                      ),
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 45,
                    color: Colors.white,
                    child: Center(child: Text('0',style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),),
                  ),
                  Container(
                    width: 50,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(right: Radius.circular(10)),
                      color: Colors.greenAccent,
                    ),
                    child: Center(
                      child: Text('+',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white
                      ),),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
