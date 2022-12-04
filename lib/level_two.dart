import 'package:flutter/material.dart';

main() {
  runApp(Level_Two());
}

class Level_Two extends StatelessWidget {
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
  var LevelContent = [
    {"name": "JUMPING JACKS", "name1": "00:20"},
    {"name": "INCLINE PUSH-UPS", "name1": "×6"},
    {"name": "KNEE PUSH-UPS", "name1": "×4"},
    {"name": "PUSH-UPS", "name1": "×4"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×4"},
    {"name": "BOX PUSH-UPS", "name1": "×5"},
    {"name": "COBRA STRETCH", "name1": "00:20"},
    {"name": "CHEST STRETCH", "name1": "00:20"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 2'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsetsDirectional.all(8.0),
            child: Container(
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      height: 11,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          LevelContent[index]['name']!,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(LevelContent[index]['name1']!),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: LevelContent.length,
      ),
    );
  }
}
