import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:untitled/purple.dart';
import 'package:untitled/wallpaper_model.dart';
import 'package:http/http.dart' as http;
import 'detailpage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallpaper',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Wallpaper(),
    );
  }
}

class Wallpaper extends StatefulWidget {
  @override
  State<Wallpaper> createState() => Wallpaper_HomeScreen();
}

class Wallpaper_HomeScreen extends State<Wallpaper> {
  var WallpaperColorArr = [
    Colors.purple,
    Colors.blue,
    Colors.deepPurpleAccent,
    Colors.greenAccent,
    Colors.black,
    Colors.yellow,
    Colors.brown
  ];
  var WallpaperColorArr1 = [
    {
      'name':'purple',
      'color': Colors.purple
    },

    {
      'name':'blue',
      'color': Colors.blue
    },

    {
      'name':'greenAccent',
      'color': Colors.blue
    },
    {
      'name':'black',
      'color': Colors.black
    },
    {
      'name':'yellow',
      'color': Colors.yellow
    },
    {
      'name':'brown',
      'color': Colors.brown
    },
  ];
  var GrideArr = [
    {'img': 'assets/images/wallp4.jpg'},
    {'img': 'assets/images/wallp5.jpg'},
    {'img': 'assets/images/wallp6.jpg'},
    {'img': 'assets/images/wallp7.gif'},
  ];

  var searchController=TextEditingController();
  late Future<WallpaperModel> wallpaper;

  var WalUrl = "https://api.pexels.com/v1/search?query=house";
  var WalKey = "563492ad6f91700001000001c67dd378bd964933bad2401b49cd4d9a";

  @override
  void initState() {
    super.initState();

    wallpaper = getWallpaper("Car");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 7),
                child:Container(
                  height: 55,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    controller: searchController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(21)
                      ),
                      hintText: 'Find Wallpaper',
                      suffixIcon: InkWell(
                          onTap: (){
                            wallpaper=getWallpaper(searchController.text.toString());
                            setState((){

                            });
                          },
                          child: Icon(Icons.search,size: 27,shadows: [Shadow(color:Colors.blue,)],color: Colors.black,)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21)
                      ),
                    ),

                  ),
                ),
              ),
              SizedBox(height: 10,),
              FutureBuilder<WallpaperModel>(
                future: wallpaper,
                builder: (context, snapshot) {
                  if(snapshot.hasData){
                    return SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 18,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(start: 15),
                              child: Text('Best of the month',style: TextStyle(
                                  fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(start: 13,top: 10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                    children: snapshot.data!.photos!.map((photoData) => InkWell(
                                      onTap: (){
                                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>Wallcolor(photoData.src!.portrait)));
                                      },
                                      child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(13.0)
                                        ),
                                        child: InkWell(
                                          onTap:(){
                                            Navigator.push(context,MaterialPageRoute(builder:(context)=>DetailPage(photoData.src!.portrait)));
                                          },
                                          child: Container(
                                            width: 140,
                                            height: 200,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10.0),
                                              color: Colors.blue,
                                            ),
                                            child: Image.network('${photoData.src!.portrait}',fit: BoxFit.cover,),
                                          ),
                                        ),
                                      ),
                                    ),
                                    ).toList()
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(start: 14),
                              child: Text('The color tone',style: TextStyle(
                                  fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black
                              ),),
                            ),

                            //Colors
                            Padding(
                              padding: const EdgeInsetsDirectional.only(start: 15,top: 10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  children:WallpaperColorArr.map((Con) => Row(
                                    children: [
                                      InkWell(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Purple(Con)));
                                        },
                                        child: Hero(
                                          tag: 'color',
                                          child: Container(
                                            width: 50,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8.0),
                                              color: Con,
                                            ),

                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                    ],
                                  ),
                                  ).toList(),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(start: 13),
                              child: Text('Categories',style: TextStyle(
                                  fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black
                              ),),
                            ),
                            Stack(
                              children: [
                                SizedBox(
                                  height: 300,
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.only(top: 0,start: 10,end: 20,bottom: 20),
                                    child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 11,
                                      mainAxisExtent: 110,
                                      crossAxisSpacing: 11,
                                    ), itemBuilder: (context,index){
                                      return Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15.0)
                                        ),
                                        clipBehavior:Clip.antiAlias,

                                        child: Container(
                                          width: 160,
                                          height: 100,
                                          //color: Colors.blue,
                                          child: Image.asset(GrideArr[index]['img']!,fit: BoxFit.cover,),
                                        ),
                                      );
                                    },
                                      itemCount: GrideArr.length,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ]
                      ),
                    );
                  } else if (snapshot.hasError){
                    return Text('Error: ${snapshot.error}');
                  }

                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ],
          ),
        ));
  }

  Future<WallpaperModel> getWallpaper(String mySearch) async {
    var WalUrl = "https://api.pexels.com/v1/search?query=$mySearch";
    var response = await http.get(Uri.parse(WalUrl), headers: {'Authorization': WalKey});

    if (response.statusCode == 200) {
      var wallapers = jsonDecode(response.body);
      return WallpaperModel.fromJson(wallapers);
    } else {
      print("Error: ${response.statusCode}");
      return WallpaperModel();
    }
  }
}
