//Wap in Flutter To Design A Whatsapp Clone
import 'package:flutter/material.dart';
main(){
  runApp(My_App());
}
class My_App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.green
      ),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Whatsapp'),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Chats(),
            Status()
          ],
        ),
      ),
    );
  }
}
class Chats extends StatelessWidget{
  var arrContent=[
    {
      "name":"Harshit",
      'img':'assets/images/boy1.png',
      "msg":"Hii",
      "time":"10:00 AM",
      "msgcount":"1"
    },
    {
      "name":"Bharat",
      'img':'assets/images/mens.png',
      "msg":"Where?",
      "time":"12:00 PM",
      "msgcount":"2"
    },
    {
      "name":"Anirudh",
      'img':'assets/images/boy1.png',
      "msg":"Bha",
      "time":"1:00 PM",
      "msgcount":"1"
    },
    {
      "name":"Harshit2",
      'img':'assets/images/mens.png',
      "msg":"Brother!",
      "time":"2:00 PM",
      "msgcount":"1"
    },
    {
      "name":"Bharat Soni",
      'img':'assets/images/mens.png',
      "msg":"Brother!",
      "time":"2:00 PM",
      "msgcount":"0"
    },
    {
      "name":"Harshit",
      'img':'assets/images/boy1.png',
      "msg":"Brother!",
      "time":"4:00 PM",
      "msgcount":"1"
    },
    {
      "name":"Anirudh Purohit",
      'img':'assets/images/mens.png',
      "msg":"thank you!",
      "time":"5:00 PM",
      "msgcount":"0"
    },
    {
      "name":"Harshit",
      'img':'assets/images/boy1.png',
      "msg":"ok",
      "time":"6:00 PM",
      "msgcount":"0"
    },
    {
      "name":"Bharat",
      'img':'assets/images/mens.png',
      "msg":"ok",
      "time":"7:00 PM",
      "msgcount":"1"
    },
    {
      "name":"Harshit",
      'img':'assets/images/boy1.png',
      "msg":"ok",
      "time":"6:00 PM",
      "msgcount":"0"
    },
    {
      "name":"Bharat",
      'img':'assets/images/mens.png',
      "msg":"ok",
      "time":"7:00 PM",
      "msgcount":"1"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context,index)=>ListTile(
      leading: CircleAvatar(
          child: Image.asset(arrContent[index]['img']!)
      ),
      title: Text(arrContent[index]['name']!,style: TextStyle(
        fontWeight: FontWeight.bold
      ),),
        subtitle: Text(arrContent[index]['msg']!),
        trailing: Column(
          children: [
            Text(arrContent[index]['time']!),
            SizedBox(
              height: 10,
            ),
            Visibility(
              visible: int.parse(arrContent[index]['msgcount']!)>0,
              child: Container(
                child: CircleAvatar(
                  child: Text(arrContent[index]['msgcount']!),
                  radius: 12,
                  backgroundColor: Colors.green,
                ),
              ),
            )
          ],
        )
    ),itemCount: arrContent.length,
    ),
    );
  }
}
class Status extends StatelessWidget{
  var StatusContent=[
    {
      'img':'assets/images/boy1.png'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context,index)=>ListTile(
      leading: CircleAvatar(
        child: Image.asset(StatusContent[index]['img']!),
      ),
    ),itemCount: StatusContent.length,
    )
    );
  }
  
}