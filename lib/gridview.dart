//Wap in Flutter To Design A Grid View
import 'package:flutter/material.dart';
main(){
  runApp(My_App());
}
class My_App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        primarySwatch: Colors.blue
      ),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 900,
              child: GridView.count(crossAxisCount: 2,
                crossAxisSpacing: 11,
                mainAxisSpacing: 11,
                children: [
                  Stack(
                    children:[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.greenAccent
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top:140),
                        child: Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(12)
                          ),
                        ),
                      )
                    ]
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.pink,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.yellowAccent,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.grey,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.red,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.blue,
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}