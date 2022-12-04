import 'package:flutter/material.dart';

main() {
  runApp(Level_One());
}

class Level_One extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
    {"name": "INCLINE PUSH-UPS", "name1": "×4"},
    {"name": "BOX PUSH-UPS", "name1": "×3"},
    {"name": "PUSH-UPS", "name1": "×3"},
    {"name": "INCLINE PUSH-UPS", "name1": "×3"},
    {"name": "KNEE PUSH-UPS", "name1": "×4"},
    {"name": "SHOULDER STRETCH", "name1": "00:20"},
    {"name": "COBRA STRETCH", "name1": "00:20"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Level 1'),
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
                          height: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              LevelContent[index]['name']!,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              LevelContent[index]['name1']!,
                            ),
                          ],
                        )
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
