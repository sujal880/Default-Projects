//Wap in Flutter To Design A Gym App
import 'dart:async';

import 'package:flutter/material.dart';

main() {
  runApp(My_App());
}

class My_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashScreen();
}

class SplashScreen extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset('assets/images/bodybuilding.jpg',height: 600,),
          ),
          Text('\nHome Workout For Men',style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),)
        ],
      ),
    );
  }
}
class HomeScreen extends StatelessWidget {
  var arrContent = [
    {"name": "ARM & CHEST WORKOUT", 'img': 'assets/images/biceps.jpg'},
    {"name": "ABS WORKOUT", 'img': 'assets/images/body1.jpg'},
    {"name": "SHOULDER & BACK WORKOUT", 'img': 'assets/images/shoulder1.jpg'},
    {"name": "LEG WORKOUT", 'img': 'assets/images/bodylegs.jpg'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Home Workout At Home',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsetsDirectional.all(8.0),
                child: Stack(children: [
                  Image.asset(arrContent[index]['img']!),
                  InkWell(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                if (index == 0) {
                                  return Levels();
                                } else if (index == 1) {
                                  return Levels1();
                                } else if (index == 2) {
                                  return Levels2();
                                } else if (index == 3) {
                                  return Levels3();
                                } else {
                                  return Text('No Content Found');
                                }
                              }));
                        },
                    child: Container(
                        height: 150,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.all(8.0),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      arrContent[index]['name']!,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                  )),
                ]),
              );
            },
            itemCount: arrContent.length,
          ),
        ));
  }
}

class Levels extends StatelessWidget {
  var arrData = [
    {
      'name': 'LEVEL 1/1:45',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/one.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 2/2:00',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/two.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 3/2:35',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/three2.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 4/3:15',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/four1.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 5/3:50',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/five.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 6/4:30',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/six.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 7/5:10',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/seven.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 8/4:10',
      'subtitle': 'Moderate Intensity',
      'image': 'assets/images/eight.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 9/4:30',
      'subtitle': 'Moderate Intensity',
      'image': 'assets/images/nine.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 10/5:15',
      'subtitle': 'Moderate Intensity',
      'image': 'assets/images/ten.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 11/5:25',
      'subtitle': 'Moderate Intensity',
      'image': 'assets/images/eleven.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 12/6:00',
      'subtitle': 'Moderate Intensity',
      'image': 'assets/images/twelve.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 13/6:35',
      'subtitle': 'High Intensity',
      'image': 'assets/images/thirteen.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 14/7:25',
      'subtitle': 'High Intensity',
      'image': 'assets/images/fourteen.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 15/6:05',
      'subtitle': 'High Intensity',
      'image': 'assets/images/fifteen.png',
      'arrow': '>'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(
            'ARM & CHEST',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) => Card(
            elevation: 6,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            child: ListTile(
                leading: CircleAvatar(
                  child: Image.asset(arrData[index]['image']!),
                  radius: 35,
                ),
                title: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      if (index == 0) {
                        return Level1();
                      } else if (index == 1) {
                        return Level2();
                      } else if (index == 2) {
                        return Level3();
                      } else if (index == 3) {
                        return Level4();
                      } else if (index == 4) {
                        return Level5();
                      } else if (index == 5) {
                        return Level6();
                      } else if (index == 6) {
                        return Level7();
                      } else if (index == 7) {
                        return Level8();
                      } else if (index == 8) {
                        return Level9();
                      } else if (index == 9) {
                        return Level10();
                      } else if (index == 10) {
                        return Level11();
                      } else if (index == 11) {
                        return Level12();
                      } else if (index == 12) {
                        return Level13();
                      } else if (index == 13) {
                        return Level14();
                      } else if (index == 14) {
                        return Level15();
                      } else {
                        return Text('No Content Found');
                      }
                    }));
                  },
                  child: Text(
                    arrData[index]['name']!,
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
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
                      child: Text(arrData[index]['arrow']!),
                      radius: 12,
                    ),
                  ],
                )),
          ),
          itemCount: arrData.length,
        ));
  }
}

class Level1 extends StatelessWidget {
  var LevelContent = [
    {"name": "JUMPING JACKS", "name1": "00:20"},
    {"name": "INCLINE PUSH-UPS", "name1": "×4"},
    {"name": "BOX PUSH-UPS", "name1": "×3"},
    {"name": "PUSH-UPS", "name1": "×3"},
    {"name": "INCLINE PUSH-UPS", "name1": "×3"},
    {"name": "KNEE PUSH-UPS", "name1": "×4"},
    {"name": "SHOULDER STRETCH", "name1": "00:20"},
    {"name": "COBRA STRETCH", "name1": "00:20"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 1'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsetsDirectional.all(8.0),
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        if (index == 0) {
                          return Jump();
                        } else if (index == 1) {
                          return Incline();
                        } else if (index == 2) {
                          return Box();
                        } else if (index == 3) {
                          return Push();
                        } else if (index == 4) {
                          return Incline_Push();
                        } else if (index == 5) {
                          return Knee();
                        } else if (index == 6) {
                          return Shoulder();
                        } else if (index == 7) {
                          return Cobra();
                        } else {
                          return Text('No Content Found');
                        }
                      }));
                    },
                    child: Row(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              LevelContent[index]['name']!,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              LevelContent[index]['name1']!,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ));
        },
        itemCount: LevelContent.length,
      ),
    );
  }
}

class Level_Two extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class Level2 extends StatelessWidget {
  var LevelContent = [
    {"name": "JUMPING JACKS", "name1": "00:20"},
    {"name": "INCLINE PUSH-UPS", "name1": "×6"},
    {"name": "KNEE PUSH-UPS", "name1": "×4"},
    {"name": "PUSH-UPS", "name1": "×4"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×4"},
    {"name": "BOX PUSH-UPS", "name1": "×5"},
    {"name": "COBRA STRETCH", "name1": "00:20"},
    {"name": "CHEST STRETCH", "name1": "00:20"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 2'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsetsDirectional.all(8.0),
            child: Container(
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Padding(
                  padding: const EdgeInsetsDirectional.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        if (index == 0) {
                          return Jump();
                        } else if (index == 1) {
                          return Incline();
                        } else if (index == 2) {
                          return Box();
                        } else if (index == 3) {
                          return Push();
                        } else if (index == 4) {
                          return Incline_Push();
                        } else if (index == 5) {
                          return Knee();
                        } else if (index == 6) {
                          return Shoulder();
                        } else if (index == 7) {
                          return Cobra();
                        } else {
                          return Text('No Content Found');
                        }
                      }));
                    },
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
                            Text(LevelContent[index]['name1']!),
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
          );
        },
        itemCount: LevelContent.length,
      ),
    );
  }
}

class Level3 extends StatelessWidget {
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
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          if (index == 0) {
                            return Jump();
                          } else if (index == 1) {
                            return Incline();
                          } else if (index == 2) {
                            return Box();
                          } else if (index == 3) {
                            return Push();
                          } else if (index == 4) {
                            return Incline_Push();
                          } else if (index == 5) {
                            return Knee();
                          } else if (index == 6) {
                            return Shoulder();
                          } else if (index == 7) {
                            return Cobra();
                          } else {
                            return Text('No Content Found');
                          }
                        }));
                      },
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
                    )),
              ),
            );
          },
          itemCount: LevelContent.length,
        ));
  }
}

class Level4 extends StatelessWidget {
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
                    child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            if (index == 0) {
                              return Jump();
                            } else if (index == 1) {
                              return Incline();
                            } else if (index == 2) {
                              return Box();
                            } else if (index == 3) {
                              return Push();
                            } else if (index == 4) {
                              return Incline_Push();
                            } else if (index == 5) {
                              return Knee();
                            } else if (index == 6) {
                              return Shoulder();
                            } else if (index == 7) {
                              return Cobra();
                            } else {
                              return Text('No Content Found');
                            }
                          }));
                        },
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
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
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
                        ))),
              ),
            );
          },
          itemCount: LevelContent.length,
        ));
  }
}

class Level5 extends StatelessWidget {
  var LevelContent = [
    {"name": "JUMPING JACKS", "name1": "00:20"},
    {"name": "INCLINE PUSH-UPS", "name1": "×16"},
    {"name": "BOX PUSH-UPS", "name1": "×9"},
    {"name": "KNEE PUSH-UPS", "name1": "×9"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×8"},
    {"name": "INCLINE PUSH-UPS", "name1": "×10"},
    {"name": "BOX PUSH-UPS", "name1": "×9"},
    {"name": "PUSH-UPS", "name1": "×8"},
    {"name": "COBRA STRETCH", "name1": "00:20"},
    {"name": "CHEST STRETCH", "name1": "00:20"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 5'),
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
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          if (index == 0) {
                            return Jump();
                          } else if (index == 1) {
                            return Incline();
                          } else if (index == 2) {
                            return Box();
                          } else if (index == 3) {
                            return Push();
                          } else if (index == 4) {
                            return Incline_Push();
                          } else if (index == 5) {
                            return Knee();
                          } else if (index == 6) {
                            return Shoulder();
                          } else if (index == 7) {
                            return Cobra();
                          } else {
                            return Text('No Content Found');
                          }
                        }));
                      },
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
                                    fontWeight: FontWeight.bold, fontSize: 15),
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
                    ))),
          );
        },
        itemCount: LevelContent.length,
      ),
    );
  }
}

class Level6 extends StatelessWidget {
  var LevelContent = [
    {"name": "JUMPING JACKS", "name1": "00:20"},
    {"name": "INCLINE PUSH-UPS", "name1": "×18"},
    {"name": "BOX PUSH-UPS", "name1": "×10"},
    {"name": "PUSH-UPS", "name1": "×7"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×10"},
    {"name": "INCLINE PUSH-UPS", "name1": "×10"},
    {"name": "BOX PUSH-UPS", "name1": "×100"},
    {"name": "PUSH-UPS", "name1": "×8"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×10"},
    {"name": "SHOULDER STRETCH", "name1": "00:20"},
    {"name": "CHEST STRETCH", "name1": "00:20"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Level 6'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsetsDirectional.all(8.0),
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.white,
                ),
                child: Padding(
                    padding: const EdgeInsetsDirectional.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          if (index == 0) {
                            return Jump();
                          } else if (index == 1) {
                            return Incline();
                          } else if (index == 2) {
                            return Box();
                          } else if (index == 3) {
                            return Push();
                          } else if (index == 4) {
                            return Incline_Push();
                          } else if (index == 5) {
                            return Knee();
                          } else if (index == 6) {
                            return Shoulder();
                          } else if (index == 7) {
                            return Cobra();
                          } else {
                            return Text('No Content Found');
                          }
                        }));
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                LevelContent[index]['name']!,
                                style: TextStyle(
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
                    )),
              ),
            );
          },
          itemCount: LevelContent.length,
        ));
  }
}

class Level7 extends StatelessWidget {
  var LevelContent = [
    {"name": "JUMPING JACKS", "name1": "00:20"},
    {"name": "INCLINE PUSH-UPS", "name1": "×18"},
    {"name": "BOX PUSH-UPS", "name1": "×10"},
    {"name": "PUSH-UPS", "name1": "×7"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×10"},
    {"name": "INCLINE PUSH-UPS", "name1": "×10"},
    {"name": "BOX PUSH-UPS", "name1": "×100"},
    {"name": "PUSH-UPS", "name1": "×8"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×10"},
    {"name": "SHOULDER STRETCH", "name1": "00:20"},
    {"name": "CHEST STRETCH", "name1": "00:20"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 7'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsetsDirectional.all(8.0),
              child: Container(
                  height: 90,
                  color: Colors.white,
                  child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          if (index == 0) {
                            return Jump();
                          } else if (index == 1) {
                            return Incline();
                          } else if (index == 2) {
                            return Box();
                          } else if (index == 3) {
                            return Push();
                          } else if (index == 4) {
                            return Incline_Push();
                          } else if (index == 5) {
                            return Knee();
                          } else if (index == 6) {
                            return Shoulder();
                          } else if (index == 7) {
                            return Cobra();
                          } else {
                            return Text('No Content Found');
                          }
                        }));
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                LevelContent[index]['name']!,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
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
                      ))));
        },
        itemCount: LevelContent.length,
      ),
    );
  }
}

class Level8 extends StatelessWidget {
  var LevelContent = [
    {"name": "JUMPING JACKS", "name1": "00:20"},
    {"name": "INCLINE PUSH-UPS", "name1": "×18"},
    {"name": "BOX PUSH-UPS", "name1": "×10"},
    {"name": "PUSH-UPS", "name1": "×7"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×10"},
    {"name": "INCLINE PUSH-UPS", "name1": "×10"},
    {"name": "BOX PUSH-UPS", "name1": "×100"},
    {"name": "PUSH-UPS", "name1": "×8"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×10"},
    {"name": "SHOULDER STRETCH", "name1": "00:20"},
    {"name": "CHEST STRETCH", "name1": "00:20"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 8'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsetsDirectional.all(8.0),
            child: Container(
                height: 90,
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      if (index == 0) {
                        return Jump();
                      } else if (index == 1) {
                        return Incline();
                      } else if (index == 2) {
                        return Box();
                      } else if (index == 3) {
                        return Push();
                      } else if (index == 4) {
                        return Incline_Push();
                      } else if (index == 5) {
                        return Knee();
                      } else if (index == 6) {
                        return Shoulder();
                      } else if (index == 7) {
                        return Cobra();
                      } else {
                        return Text('No Content Found');
                      }
                    }));
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            LevelContent[index]['name']!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(LevelContent[index]['name1']!)
                        ],
                      )
                    ],
                  ),
                )),
          );
        },
        itemCount: LevelContent.length,
      ),
    );
  }
}

class Level9 extends StatelessWidget {
  var LevelContent = [
    {"name": "JUMPING JACKS", "name1": "00:20"},
    {"name": "INCLINE PUSH-UPS", "name1": "×18"},
    {"name": "BOX PUSH-UPS", "name1": "×10"},
    {"name": "PUSH-UPS", "name1": "×7"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×10"},
    {"name": "INCLINE PUSH-UPS", "name1": "×10"},
    {"name": "BOX PUSH-UPS", "name1": "×100"},
    {"name": "PUSH-UPS", "name1": "×8"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×10"},
    {"name": "SHOULDER STRETCH", "name1": "00:20"},
    {"name": "CHEST STRETCH", "name1": "00:20"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 9'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsetsDirectional.all(8.0),
            child: Container(
                height: 90,
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      if (index == 0) {
                        return Jump();
                      } else if (index == 1) {
                        return Incline();
                      } else if (index == 2) {
                        return Box();
                      } else if (index == 3) {
                        return Push();
                      } else if (index == 4) {
                        return Incline_Push();
                      } else if (index == 5) {
                        return Knee();
                      } else if (index == 6) {
                        return Shoulder();
                      } else if (index == 7) {
                        return Cobra();
                      } else {
                        return Text('No Content Found');
                      }
                    }));
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            LevelContent[index]['name']!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(LevelContent[index]['name1']!)
                        ],
                      )
                    ],
                  ),
                )),
          );
        },
        itemCount: LevelContent.length,
      ),
    );
  }
}

class Level10 extends StatelessWidget {
  var LevelContent = [
    {"name": "JUMPING JACKS", "name1": "00:20"},
    {"name": "INCLINE PUSH-UPS", "name1": "×18"},
    {"name": "BOX PUSH-UPS", "name1": "×10"},
    {"name": "PUSH-UPS", "name1": "×7"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×10"},
    {"name": "INCLINE PUSH-UPS", "name1": "×10"},
    {"name": "BOX PUSH-UPS", "name1": "×100"},
    {"name": "PUSH-UPS", "name1": "×8"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×10"},
    {"name": "SHOULDER STRETCH", "name1": "00:20"},
    {"name": "CHEST STRETCH", "name1": "00:20"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 10'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsetsDirectional.all(8.0),
            child: Container(
                height: 90,
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      if (index == 0) {
                        return Jump();
                      } else if (index == 1) {
                        return Incline();
                      } else if (index == 2) {
                        return Box();
                      } else if (index == 3) {
                        return Push();
                      } else if (index == 4) {
                        return Incline_Push();
                      } else if (index == 5) {
                        return Knee();
                      } else if (index == 6) {
                        return Shoulder();
                      } else if (index == 7) {
                        return Cobra();
                      } else {
                        return Text('No Content Found');
                      }
                    }));
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            LevelContent[index]['name']!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(LevelContent[index]['name1']!)
                        ],
                      )
                    ],
                  ),
                )),
          );
        },
        itemCount: LevelContent.length,
      ),
    );
  }
}

class Level11 extends StatelessWidget {
  var LevelContent = [
    {"name": "JUMPING JACKS", "name1": "00:20"},
    {"name": "INCLINE PUSH-UPS", "name1": "×18"},
    {"name": "BOX PUSH-UPS", "name1": "×10"},
    {"name": "PUSH-UPS", "name1": "×7"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×10"},
    {"name": "INCLINE PUSH-UPS", "name1": "×10"},
    {"name": "BOX PUSH-UPS", "name1": "×100"},
    {"name": "PUSH-UPS", "name1": "×8"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×10"},
    {"name": "SHOULDER STRETCH", "name1": "00:20"},
    {"name": "CHEST STRETCH", "name1": "00:20"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 11'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsetsDirectional.all(8.0),
            child: Container(
                height: 90,
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      if (index == 0) {
                        return Jump();
                      } else if (index == 1) {
                        return Incline();
                      } else if (index == 2) {
                        return Box();
                      } else if (index == 3) {
                        return Push();
                      } else if (index == 4) {
                        return Incline_Push();
                      } else if (index == 5) {
                        return Knee();
                      } else if (index == 6) {
                        return Shoulder();
                      } else if (index == 7) {
                        return Cobra();
                      } else {
                        return Text('No Content Found');
                      }
                    }));
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            LevelContent[index]['name']!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(LevelContent[index]['name1']!)
                        ],
                      )
                    ],
                  ),
                )),
          );
        },
        itemCount: LevelContent.length,
      ),
    );
  }
}

class Level12 extends StatelessWidget {
  var LevelContent = [
    {"name": "JUMPING JACKS", "name1": "00:20"},
    {"name": "INCLINE PUSH-UPS", "name1": "×18"},
    {"name": "BOX PUSH-UPS", "name1": "×10"},
    {"name": "PUSH-UPS", "name1": "×7"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×10"},
    {"name": "INCLINE PUSH-UPS", "name1": "×10"},
    {"name": "BOX PUSH-UPS", "name1": "×100"},
    {"name": "PUSH-UPS", "name1": "×8"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×10"},
    {"name": "SHOULDER STRETCH", "name1": "00:20"},
    {"name": "CHEST STRETCH", "name1": "00:20"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 12'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsetsDirectional.all(8.0),
            child: Container(
                height: 90,
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      if (index == 0) {
                        return Jump();
                      } else if (index == 1) {
                        return Incline();
                      } else if (index == 2) {
                        return Box();
                      } else if (index == 3) {
                        return Push();
                      } else if (index == 4) {
                        return Incline_Push();
                      } else if (index == 5) {
                        return Knee();
                      } else if (index == 6) {
                        return Shoulder();
                      } else if (index == 7) {
                        return Cobra();
                      } else {
                        return Text('No Content Found');
                      }
                    }));
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            LevelContent[index]['name']!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(LevelContent[index]['name1']!)
                        ],
                      )
                    ],
                  ),
                )),
          );
        },
        itemCount: LevelContent.length,
      ),
    );
  }
}

class Level13 extends StatelessWidget {
  var LevelContent = [
    {"name": "JUMPING JACKS", "name1": "00:20"},
    {"name": "INCLINE PUSH-UPS", "name1": "×18"},
    {"name": "BOX PUSH-UPS", "name1": "×10"},
    {"name": "PUSH-UPS", "name1": "×7"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×10"},
    {"name": "INCLINE PUSH-UPS", "name1": "×10"},
    {"name": "BOX PUSH-UPS", "name1": "×100"},
    {"name": "PUSH-UPS", "name1": "×8"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×10"},
    {"name": "SHOULDER STRETCH", "name1": "00:20"},
    {"name": "CHEST STRETCH", "name1": "00:20"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 13'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsetsDirectional.all(8.0),
            child: Container(
                height: 90,
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      if (index == 0) {
                        return Jump();
                      } else if (index == 1) {
                        return Incline();
                      } else if (index == 2) {
                        return Box();
                      } else if (index == 3) {
                        return Push();
                      } else if (index == 4) {
                        return Incline_Push();
                      } else if (index == 5) {
                        return Knee();
                      } else if (index == 6) {
                        return Shoulder();
                      } else if (index == 7) {
                        return Cobra();
                      } else {
                        return Text('No Content Found');
                      }
                    }));
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            LevelContent[index]['name']!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(LevelContent[index]['name1']!)
                        ],
                      )
                    ],
                  ),
                )),
          );
        },
        itemCount: LevelContent.length,
      ),
    );
  }
}

class Level14 extends StatelessWidget {
  var LevelContent = [
    {"name": "JUMPING JACKS", "name1": "00:20"},
    {"name": "INCLINE PUSH-UPS", "name1": "×18"},
    {"name": "BOX PUSH-UPS", "name1": "×10"},
    {"name": "PUSH-UPS", "name1": "×7"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×10"},
    {"name": "INCLINE PUSH-UPS", "name1": "×10"},
    {"name": "BOX PUSH-UPS", "name1": "×100"},
    {"name": "PUSH-UPS", "name1": "×8"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×10"},
    {"name": "SHOULDER STRETCH", "name1": "00:20"},
    {"name": "CHEST STRETCH", "name1": "00:20"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 14'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsetsDirectional.all(8.0),
            child: Container(
                height: 90,
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      if (index == 0) {
                        return Jump();
                      } else if (index == 1) {
                        return Incline();
                      } else if (index == 2) {
                        return Box();
                      } else if (index == 3) {
                        return Push();
                      } else if (index == 4) {
                        return Incline_Push();
                      } else if (index == 5) {
                        return Knee();
                      } else if (index == 6) {
                        return Shoulder();
                      } else if (index == 7) {
                        return Cobra();
                      } else {
                        return Text('No Content Found');
                      }
                    }));
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            LevelContent[index]['name']!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(LevelContent[index]['name1']!)
                        ],
                      )
                    ],
                  ),
                )),
          );
        },
        itemCount: LevelContent.length,
      ),
    );
  }
}

class Level15 extends StatelessWidget {
  var LevelContent = [
    {"name": "JUMPING JACKS", "name1": "00:20"},
    {"name": "INCLINE PUSH-UPS", "name1": "×18"},
    {"name": "BOX PUSH-UPS", "name1": "×10"},
    {"name": "PUSH-UPS", "name1": "×7"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×10"},
    {"name": "INCLINE PUSH-UPS", "name1": "×10"},
    {"name": "BOX PUSH-UPS", "name1": "×100"},
    {"name": "PUSH-UPS", "name1": "×8"},
    {"name": "WIDE ARM PUSH-UPS", "name1": "×10"},
    {"name": "SHOULDER STRETCH", "name1": "00:20"},
    {"name": "CHEST STRETCH", "name1": "00:20"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 15'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsetsDirectional.all(8.0),
            child: Container(
                height: 90,
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      if (index == 0) {
                        return Jump();
                      } else if (index == 1) {
                        return Incline();
                      } else if (index == 2) {
                        return Box();
                      } else if (index == 3) {
                        return Push();
                      } else if (index == 4) {
                        return Incline_Push();
                      } else if (index == 5) {
                        return Knee();
                      } else if (index == 6) {
                        return Shoulder();
                      } else if (index == 7) {
                        return Cobra();
                      } else {
                        return Text('No Content Found');
                      }
                    }));
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            LevelContent[index]['name']!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(LevelContent[index]['name1']!)
                        ],
                      )
                    ],
                  ),
                )),
          );
        },
        itemCount: LevelContent.length,
      ),
    );
  }
}

class Levels1 extends StatelessWidget {
  var arrContent = [
    {
      'name': 'LEVEL 1/1:45',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/one.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 2/2:00',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/two.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 3/2:35',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/three2.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 4/3:15',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/four1.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 5/3:50',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/five.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 6/4:30',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/six.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 7/5:10',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/seven.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 8/4:10',
      'subtitle': 'Moderate Intensity',
      'image': 'assets/images/eight.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 9/4:30',
      'subtitle': 'Moderate Intensity',
      'image': 'assets/images/nine.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 10/5:15',
      'subtitle': 'Moderate Intensity',
      'image': 'assets/images/ten.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 11/5:25',
      'subtitle': 'Moderate Intensity',
      'image': 'assets/images/eleven.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 12/6:00',
      'subtitle': 'Moderate Intensity',
      'image': 'assets/images/twelve.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 13/6:35',
      'subtitle': 'High Intensity',
      'image': 'assets/images/thirteen.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 14/7:25',
      'subtitle': 'High Intensity',
      'image': 'assets/images/fourteen.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 15/6:05',
      'subtitle': 'High Intensity',
      'image': 'assets/images/fifteen.png',
      'arrow': '>'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ABS'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Card(
          elevation: 7,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26),
          ),
          child: ListTile(
            leading: CircleAvatar(
              child: Image.asset(arrContent[index]['image']!),
              radius: 30,
            ),
            title: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  if (index == 0) {
                    return Level1();
                  } else if (index == 1) {
                    return Level2();
                  } else if (index == 2) {
                    return Level3();
                  } else if (index == 3) {
                    return Level4();
                  } else if (index == 4) {
                    return Level5();
                  } else if (index == 5) {
                    return Level6();
                  } else if (index == 6) {
                    return Level7();
                  } else if (index == 7) {
                    return Level8();
                  } else if (index == 8) {
                    return Level9();
                  } else if (index == 9) {
                    return Level10();
                  } else if (index == 10) {
                    return Level11();
                  } else if (index == 11) {
                    return Level12();
                  } else if (index == 12) {
                    return Level13();
                  } else if (index == 13) {
                    return Level14();
                  } else if (index == 14) {
                    return Level15();
                  } else {
                    return Text('No Content Found');
                  }
                }));
              },
              child: Text(
                arrContent[index]['name']!,
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
            ),
            subtitle: Text(
              arrContent[index]['subtitle']!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Column(
              children: [
                SizedBox(
                  height: 7,
                ),
                CircleAvatar(
                  radius: 12,
                  child: Text(
                    arrContent[index]['arrow']!,
                  ),
                )
              ],
            ),
          ),
        ),
        itemCount: arrContent.length,
      ),
    );
  }
}

class Levels2 extends StatelessWidget {
  var arrContent = [
    {
      'name': 'LEVEL 1/1:45',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/one.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 2/2:00',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/two.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 3/2:35',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/three2.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 4/3:15',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/four1.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 5/3:50',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/five.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 6/4:30',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/six.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 7/5:10',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/seven.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 8/4:10',
      'subtitle': 'Moderate Intensity',
      'image': 'assets/images/eight.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 9/4:30',
      'subtitle': 'Moderate Intensity',
      'image': 'assets/images/nine.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 10/5:15',
      'subtitle': 'Moderate Intensity',
      'image': 'assets/images/ten.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 11/5:25',
      'subtitle': 'Moderate Intensity',
      'image': 'assets/images/eleven.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 12/6:00',
      'subtitle': 'Moderate Intensity',
      'image': 'assets/images/twelve.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 13/6:35',
      'subtitle': 'High Intensity',
      'image': 'assets/images/thirteen.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 14/7:25',
      'subtitle': 'High Intensity',
      'image': 'assets/images/fourteen.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 15/6:05',
      'subtitle': 'High Intensity',
      'image': 'assets/images/fifteen.png',
      'arrow': '>'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SHOULDER & BACK'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Card(
          elevation: 7,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26),
          ),
          child: ListTile(
            leading: CircleAvatar(
              child: Image.asset(arrContent[index]['image']!),
              radius: 30,
            ),
            title: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  if (index == 0) {
                    return Level1();
                  } else if (index == 1) {
                    return Level2();
                  } else if (index == 2) {
                    return Level3();
                  } else if (index == 3) {
                    return Level4();
                  } else if (index == 4) {
                    return Level5();
                  } else if (index == 5) {
                    return Level6();
                  } else if (index == 6) {
                    return Level7();
                  } else if (index == 7) {
                    return Level8();
                  } else if (index == 8) {
                    return Level9();
                  } else if (index == 9) {
                    return Level10();
                  } else if (index == 10) {
                    return Level11();
                  } else if (index == 11) {
                    return Level12();
                  } else if (index == 12) {
                    return Level13();
                  } else if (index == 13) {
                    return Level14();
                  } else if (index == 14) {
                    return Level15();
                  } else {
                    return Text('No Content Found');
                  }
                }));
              },
              child: Text(
                arrContent[index]['name']!,
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
            ),
            subtitle: Text(
              arrContent[index]['subtitle']!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Column(
              children: [
                SizedBox(
                  height: 7,
                ),
                CircleAvatar(
                  radius: 12,
                  child: Text(
                    arrContent[index]['arrow']!,
                  ),
                )
              ],
            ),
          ),
        ),
        itemCount: arrContent.length,
      ),
    );
  }
}

class Levels3 extends StatelessWidget {
  var arrContent = [
    {
      'name': 'LEVEL 1/1:45',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/one.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 2/2:00',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/two.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 3/2:35',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/three2.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 4/3:15',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/four1.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 5/3:50',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/five.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 6/4:30',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/six.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 7/5:10',
      'subtitle': 'Light Intensity',
      'image': 'assets/images/seven.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 8/4:10',
      'subtitle': 'Moderate Intensity',
      'image': 'assets/images/eight.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 9/4:30',
      'subtitle': 'Moderate Intensity',
      'image': 'assets/images/nine.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 10/5:15',
      'subtitle': 'Moderate Intensity',
      'image': 'assets/images/ten.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 11/5:25',
      'subtitle': 'Moderate Intensity',
      'image': 'assets/images/eleven.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 12/6:00',
      'subtitle': 'Moderate Intensity',
      'image': 'assets/images/twelve.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 13/6:35',
      'subtitle': 'High Intensity',
      'image': 'assets/images/thirteen.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 14/7:25',
      'subtitle': 'High Intensity',
      'image': 'assets/images/fourteen.png',
      'arrow': '>'
    },
    {
      'name': 'LEVEL 15/6:05',
      'subtitle': 'High Intensity',
      'image': 'assets/images/fifteen.png',
      'arrow': '>'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LEGS'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Card(
          elevation: 7,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
          child: ListTile(
            leading: CircleAvatar(
              child: Image.asset(arrContent[index]['image']!),
              radius: 30,
            ),
            title: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  if (index == 0) {
                    return Level1();
                  } else if (index == 1) {
                    return Level2();
                  } else if (index == 2) {
                    return Level3();
                  } else if (index == 3) {
                    return Level4();
                  } else if (index == 4) {
                    return Level5();
                  } else if (index == 5) {
                    return Level6();
                  } else if (index == 6) {
                    return Level7();
                  } else if (index == 7) {
                    return Level8();
                  } else if (index == 8) {
                    return Level9();
                  } else if (index == 9) {
                    return Level10();
                  } else if (index == 10) {
                    return Level11();
                  } else if (index == 11) {
                    return Level12();
                  } else if (index == 12) {
                    return Level13();
                  } else if (index == 13) {
                    return Level14();
                  } else if (index == 14) {
                    return Level15();
                  } else {
                    return Text('No Content Found');
                  }
                }));
              },
              child: Text(
                arrContent[index]['name']!,
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
            ),
            subtitle: Text(
              arrContent[index]['subtitle']!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Column(
              children: [
                SizedBox(
                  height: 7,
                ),
                CircleAvatar(
                  radius: 12,
                  child: Text(
                    arrContent[index]['arrow']!,
                  ),
                )
              ],
            ),
          ),
        ),
        itemCount: arrContent.length,
      ),
    );
  }
}

class Jump extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Jumping Jacks'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Image.asset('assets/images/jumpingj.gif'),
            ),
            Text(
              '   JUMPING JACKS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '      1.Start with your feet together and your arms by your sides\n   '
              '      then jump up with your feet apart and your hands \n         overhead',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              '       2.Return to the start position then do the next rep.This \n          exercise provides'
              ' a full-body workout and works \n          all your large muscle groups',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            )
          ],
        ));
  }
}

class Incline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Incline Push-Ups'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image.asset('assets/images/inclinep.gif'),
          ),
          Text(
            ' INCLINE PUSH-UPS',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 40),
          Text(
            '  1.Incline pushups are a great way to start a pushup routine if \n     you have trouble doing the basic pushup.'
            ' The exercise still \n     targets the main chest muscles (the pectoralis major and \n     minor) but puts far less '
            'stress on your elbows.',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            '   2.This is perfect for beginners, for anyone doing upper body \n       and shoulder rehab, or even seniors who need to build \n       upper '
            'body strength to improve their quality of life and \n       independence.',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class Box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Box Push-Ups')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Image.asset('assets/images/boxp.gif'),
            ),
            Text(
              ' BOX PUSH-UPS',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              '  1.How to: Start on your hands and knees in table top \n     position. '
              'With your arms straight, your shoulders should \n     be over your'
              ' wrists and your hips should be over your \n     knees (a). '
              'Bend your elbows and lower your upper body \n     slowly to the '
              'ground (b). When your nose reaches the floor, \n     press up with '
              'your arms and return to the starting position \n    (c). Perform t'
              'hree sets of 8-10 reps.',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            )
          ],
        ));
  }
}

class Push extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Push-Ups'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Image.asset('assets/images/push.gif'),
            ),
            Text(
              '  Push-Ups',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              '   1.Contract your abs and tighten your core by pulling'
              ' your \n       belly button toward your spine. ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '   2.Inhale as you slowly bend your elbows and lower yourself \n      to the floor,'
              ' until your elbows are at a 90-degree angle.',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '   3.Exhale while contracting your chest muscles and pushing \n      back '
              'up through your hands, returning to the start position. ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            )
          ],
        ));
  }
}

class Incline_Push extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Incline Push-Ups',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(child: Image.asset('assets/images/inclinepushups.gif')),
          Text(
            '  INCLINE PUSH-UPS',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            '   1.Stand in front of your box or bench, then squat or bend \n      down and place both '
            'hands on either side of it with your \n      fingers pointing forward.',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            '   2.Once your hands are in the right position, step your body '
            '\n       back into a plank position, one leg at a time.',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            '   3.Next, bend your arms to help you slowly lower your chest \n       toward the box.'
            'Straighten your arms to bring yourself \n       back up into a straight line.',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          )
        ],
      ),
    );
  }
}

class Knee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Knee Push-Ups'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Image.asset('assets/images/knee.gif'),
            ),
            Text(
              '   KNEE PUSH-UPS',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              '     1.Kneel on the floor.\n\n     2.Extend arms and put hands '
              'shoulder-width apart on the \n        floor in front of you.'
              '\n\n     3.Tighten abs while you bend arms, '
              'lowering your torso \n        until chest grazes the floor.'
              '\n\n     4.Push torso back up by straightening arms. Slow and \n        steady, baby.'
              '\n\n     5.Rinse and repeat.',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            )
          ],
        ));
  }
}

class Shoulder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shoulder Stretch')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image.asset('assets/images/shoulder.gif'),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '   SHOULDER STRETCH',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            '     1.Relax your shoulders.\n     2.Raise one arm to shoulder'
            ' height, and reach it across \n        your chest.'
            '\n     3.Pull the arm slightly toward you with your other arm. '
            '\n        This will help you get a gentle stretch. Hold for about \n        6 seconds.'
            '\n     4.Repeat 2 to 4 times.',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          )
        ],
      ),
    );
  }
}

class Cobra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cobra Stretch'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image.asset('assets/images/Cobra.gif'),
          ),
          Text(
            '   COBRA STRETCH',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            '      1.Place your hands palms down on the ground beneath \n          your shoulders.'
                '\n     2.Lift your chest up off the ground by straightening your \n        arms.'
                '\n     3.For Cobra Pose, lie down on your abdomen and point \n        your feet behind you. Bring your hands next to your'
                '\n        chest and engage the gluteals and back muscles as \n        you curl '
                'the chest up away from the floor, supporting \n        the shape with your arms.',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          )
        ],
      ),
    );
  }
}