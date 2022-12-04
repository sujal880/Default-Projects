import 'package:flutter/material.dart';
main(){
  runApp(xyz());
}
class xyz extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.grey
      ),
      home: MainScreen(),
    );
  }
}
class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('drawer'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notification_add_outlined,color:Colors.white))
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Lion())
                  );
                },
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset('assets/images/burger1.webp'),
                  ),
                ),
                SizedBox(width: 10),
                InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Lion())
                  );
                },
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset('assets/images/burger1.webp'),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/images/burger1.webp'),
                ),
                SizedBox(width: 10),
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/images/burger1.webp'),
                ),
              ],
            ),
          )
        ],
      ),


      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                child: Text('Profile')
            ),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child:
              ListTile(
                title: const Text('item 1'),
                leading: const Icon(Icons.alarm),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child:
              ListTile(
                title: const Text('item 2'),
                leading: const Icon(Icons.key),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child:
              ListTile(
                title: const Text('item 3'),
                leading: const Icon(Icons.phone),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child:
              ListTile(
                title: const Text('item 4'),
                leading: const Icon(Icons.place),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Lion extends StatefulWidget {
  const Lion({Key? key}) :super(key: key);

  @override
  State<StatefulWidget> createState() => _LionState();
}
class _LionState extends State<Lion>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lion') ,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(child: Text('Lion is a king of forest'),
          )
        ],
      ),
    );
  }
}

class Tiger extends StatefulWidget {
  const Tiger({Key? key}) :super(key: key);

  @override
  State<StatefulWidget> createState() => _TigerState();
}
class _TigerState extends State<Lion>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tiger') ,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(child: Text('our national animal is tiger'),
          )
        ],
      ),
    );
  }
}