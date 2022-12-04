import 'package:flutter/material.dart';

main() {
  runApp(Level_Four());
}

class Level_Four extends StatelessWidget {
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
  var LevelContent = [
    {"name": "JUMPING JACKS", "name1": "00:20"},
    {"name": "INCLINE PUSH-UPS", "name1": "×14"},
    {"name": "BOX PUSH-UPS", "name1": "×6"},
    {"name": "PUSH-UPS", "name1": "×6"},
    {"name": "INCLINE PUSH-UPS", "name1": "×8"},
    {"name": "BOX PUSH-UPS", "name1": "×7"},
    {"name": "PUSH-UPS", "name1": "×6"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×6"},
    {"name": "SHOULDER STRETCH", "name1": "00:20"},
    {"name": "COBRA STRETCH", "name1": "00:20"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Level 4'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsetsDirectional.all(8.0),
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(26),
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
                            Text(
                              LevelContent[index]['name1']!,
                            )
                          ],
                        )
                      ],
                    )),
              ),
            );
          },
          itemCount: LevelContent.length,
        ));
  }
}
