import 'package:flutter/material.dart';

main() {
  runApp(Level_Three());
}

class Level_Three extends StatelessWidget {
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
    {"name": "INCLINE PUSH-UPS", "name1": "×10"},
    {"name": "PUSH-UPS", "name1": "×5"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×5"},
    {"name": "INCLINE PUSH-UPS", "name1": "×8"},
    {"name": "PUSH-UPS", "name1": "×5"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×5"},
    {"name": "SHOULDER STRETCH", "name1": "00:20"},
    {"name": "CHEST STRETCH", "name1": "00:20"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Level 3'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsetsDirectional.all(8.0),
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(26)),
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
                            LevelContent[index]['name']!,style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
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
                  ),
                ),
              ),
            );
          },
          itemCount: LevelContent.length,
        ));
  }
}
