import 'package:flutter/material.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      'name':'LEVEL 1/1:45',
      'subtitle':'Light Intensity',
      'image':'assets/images/one.png',
      'arrow':'>'
    },
    {
      'name':'LEVEL 2/2:00',
      'subtitle':'Light Intensity',
      'image':'assets/images/two.png',
      'arrow':'>'
    },
    {
      'name':'LEVEL 3/2:35',
      'subtitle':'Light Intensity',
      'image':'assets/images/three2.png',
      'arrow':'>'
    },

    {
      'name':'LEVEL 4/3:15',
      'subtitle':'Light Intensity',
      'image':'assets/images/four1.png',
      'arrow':'>'
    },
    {
      'name':'LEVEL 5/3:50',
      'subtitle':'Light Intensity',
      'image':'assets/images/five.png',
      'arrow':'>'
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
                child: Image.asset(arrData[index]['image']!),
                radius: 41,
              ),
              title: Text(
                arrData[index]['name']!,
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                arrData[index]['subtitle']!,
                style: TextStyle(color: Colors.grey.shade500),
              ),
              trailing: Column(
                children: [
                  SizedBox(
                    height: 7,
                  ),
                  CircleAvatar(
                    child:Text(arrData[index]['arrow']!),
                    radius: 12,
                  )
                ],
              )),
          itemCount: arrData.length,
        ));
  }
}
class NextPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 1'),
      ),
    );
  }
}