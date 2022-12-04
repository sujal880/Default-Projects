//Wap in Flutter To Design Grid View
import 'package:flutter/material.dart';
main(){
  runApp(My_App());
}
class My_App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      body:Center(child: Text('My App')),
      drawer: Drawer(
        child: ListView(
          // padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(child: Text('Header'),
              decoration: BoxDecoration(
                  color: Colors.blue
              ),
            ),
            InkWell(
              onTap:(){
                Navigator.pop(context);
              },
              child: ListTile(
                title: const Text('item 1'),
                leading: const Icon(Icons.alarm),
              ),
            ),
            ListTile(
              title: const Text('item 2'),
              leading: const Icon(Icons.phone),
            )
          ],
        ),
      ),
    );
  }
}