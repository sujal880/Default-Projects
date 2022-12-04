//Wap in Flutter To Design ListView
import 'package:flutter/material.dart';
main() {
  runApp(My_App());
}
class My_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      "name": "Sujal",
      "number": "8824357773",
      'img': "assets/images/download.png"
    },
    {"name": "Sujal", "number": "8824357773", 'img': "assets/images/download (2).jpg"},
    {"name": "Sujal", "number": "8824357773", 'img': "assets/images/boy.png"},
    {"name": "Sujal", "number": "8824357773", 'img': "assets/images/boy.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsetsDirectional.all(23.0),
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(26),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.all(23.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      child: Image.asset(arrContent[index]['img']!),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          arrContent[index]['name']!,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(arrContent[index]['number']!),
                      ],
                    ),

                  ],
                ),
              ),
            ),
          );
        }, itemCount: arrContent.length,
      ),
    );
  }
}
