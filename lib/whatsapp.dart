import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


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
      'name':'Raman',
      'lastmsg':'Hi!',
      'image':'assets/images/avatar5.png',
      'time':'11:11',
      'msgcount':'2'
    },

    {
      'name':'Ramanujan',
      'lastmsg':'Done!',
      'image':'assets/images/avatar2.png',
      'time':'08:11',
      'msgcount':'0'
    },

    {
      'name':'Ramadheer',
      'lastmsg':'Welcome :)',
      'image':'assets/images/avatar3.png',
      'time':'01:11',
      'msgcount':'0'
    },

    {
      'name':'Radhika',
      'lastmsg':'Hey!',
      'image':'assets/images/avatar9.png',
      'time':'07:21',
      'msgcount':'2'
    },

    {
      'name':'Nitish',
      'lastmsg':'Where??',
      'image':'assets/images/avatar4.png',
      'time':'10:10',
      'msgcount':'7'
    },

    {
      'name':'Raman',
      'lastmsg':'Hi!',
      'image':'assets/images/avatar5.png',
      'time':'11:11',
      'msgcount':'2'
    },

    {
      'name':'Ramanujan',
      'lastmsg':'Done!',
      'image':'assets/images/avatar2.png',
      'time':'08:11',
      'msgcount':'0'
    },

    {
      'name':'Ramadheer',
      'lastmsg':'Welcome :)',
      'image':'assets/images/avatar3.png',
      'time':'01:11',
      'msgcount':'0'
    },

    {
      'name':'Radhika',
      'lastmsg':'Hey!',
      'image':'assets/images/avatar9.png',
      'time':'07:21',
      'msgcount':'2'
    },

    {
      'name':'Nitish',
      'lastmsg':'Where??',
      'image':'assets/images/avatar4.png',
      'time':'10:10',
      'msgcount':'7'
    },

    {
      'name':'Raman',
      'lastmsg':'Hi!',
      'image':'assets/images/avatar5.png',
      'time':'11:11',
      'msgcount':'2'
    },

    {
      'name':'Ramanujan',
      'lastmsg':'Done!',
      'image':'assets/images/avatar2.png',
      'time':'08:11',
      'msgcount':'0'
    },

    {
      'name':'Ramadheer',
      'lastmsg':'Welcome :)',
      'image':'assets/images/avatar3.png',
      'time':'01:11',
      'msgcount':'0'
    },

    {
      'name':'Radhika',
      'lastmsg':'Hey!',
      'image':'assets/images/avatar9.png',
      'time':'07:21',
      'msgcount':'2'
    },

    {
      'name':'Nitish',
      'lastmsg':'Where??',
      'image':'assets/images/avatar4.png',
      'time':'10:10',
      'msgcount':'7'
    }

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
                arrData[index]['lastmsg']!,
                style: TextStyle(color: Colors.grey.shade500),
              ),
              trailing: Column(
                children: [
                  Text(arrData[index]['time']!,
                    style: TextStyle(
                        color: int.parse(arrData[index]['msgcount']!)>0 ? Colors.green : Colors.grey
                    ),),
                  SizedBox(
                    height: 11,
                  ),
                  Visibility(
                    visible: int.parse(arrData[index]['msgcount']!)>0,
                    child: SizedBox(
                      width: 21,
                      height: 21,
                      child: CircleAvatar(
                        child: Text(arrData[index]['msgcount']!),
                        backgroundColor: Colors.green,
                      ),
                    ),
                  )
                ],
              )),
          itemCount: arrData.length,
        ));
  }
}
