import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'List View',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  var arrContent = [
    {
      "name": "Bharat",
      "number": "9856354635",
      'img': "assets/images/boy.png"
    },
    {
      "name": "Sujal",
      "number": "9825354635",
      'img': "assets/images/girl.png"
    },
    {
      "name": "Harshit",
      "number": "95112263548",
      'img': "assets/images/boy.png"
    }
  ];
  var arrColors = [
    Colors.purpleAccent,
    Colors.red,
    Colors.tealAccent,
    Colors.brown,
    Colors.orangeAccent,
    Colors.lightBlue,
    Colors.deepPurple,
    Colors.limeAccent,
    Colors.deepPurple,
    Colors.pinkAccent,
    Colors.orange,
    Colors.purple,
    Colors.lightGreenAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Text View'),
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsetsDirectional.all(8.0),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(11.0)
                ),

                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Image.asset(arrContent[index]['img']!),
                      const SizedBox(
                          width: 11
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              arrContent[index]['name']!
                          ),
                          //Text(arrContent[index]['name']!),
                          Text(arrContent[index]['number']!, style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                          ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              )
          );
        }, itemCount: arrContent.length,
        )
    );
  }
}
