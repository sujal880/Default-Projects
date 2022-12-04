import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  var arrData = [

    {
      'name':'Level 1/1.45',
      'lastmsg':'Light Intensity',
      'image':'assets/images/147142 (1).png',
      'msgcount':'>'
    },
    {
      'name': 'Level 2/2:00',
      'lastmsg': 'Light Intensity',
      'image': 'assets/images/boy1.png',
      'msgcount': '>',
    },
    {
      'name': 'Level 3/2:35',
      'lastmsg': 'Light Intensity',
      'image': 'assets/images/147142 (1).png',
      'msgcount': '>'
    },
    {
      'name': 'Level 4/3:15',
      'lastmsg': 'Light Intensity',
      'image': 'assets/images/boy1.png',
      'msgcount': '>',
    },
    {
      'name': 'Level 5/3:50',
      'lastmsg': 'Light Intensity',
      'image': 'assets/images/147142 (1).png',
      'msgcount': '>',
    },
    {
      'name': 'Level 6/4:30',
      'lastmsg': 'Light Intensity',
      'image': 'assets/images/boy1.png',
      'msgcount': '>',
    },
    {
      'name': 'Level 7/5:10',
      'lastmsg': 'Light Intensity',
      'image': 'assets/images/147142 (1).png',
      'msgcount': '>',
    },
    {
      'name': 'Level 8/4:10',
      'lastmsg': 'Moderate Intensity',
      'image': 'assets/images/boy1.png',
      'msgcount': '>',
    },
    {
      'name': 'Level 9/4:30',
      'lastmsg': 'Moderate Intensity',
      'image': 'assets/images/147142 (1).png',
      'msgcount': '>',
    },
    {
      'name': 'Level 10/5:15',
      'lastmsg': 'High Intensity',
      'image': 'assets/images/boy1.png',
      'msgcount': '>',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('ListView'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                    arrData[index]['image']!
                ),
        child: Image.asset(arrData[index]['image']!),
                radius: 41,
              ),

)
                    )


        
                );
              }
                );
                child: Text(
                  arrData[index]['name']!,
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),

                ),
              ),

              subtitle: Text(
                arrData[index]['lastmsg']!,
                style: TextStyle(color: Colors.grey.shade500),
              ),
              trailing: Column(
                children: [
                  Text(arrData[index]['msgcount']!,style: TextStyle(
                      fontWeight: FontWeight.bold,
                  fontSize: 23,
                  ),
                  ),

                  SizedBox(
                    height: 11,
                  ),
                ],
              )),
          itemCount: arrData.length,
        )
    );
  }
}
class StartPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Page'),
        ),
        body:Column(
          children: [
            Text('Hello')
          ],
        )
    );
  }

}