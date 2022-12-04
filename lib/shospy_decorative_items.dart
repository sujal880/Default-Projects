//Wap in Flutter To Design Decorative Item Page
import 'package:flutter/material.dart';
import 'package:untitled/shopsy.dart';
class Items extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shelf'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('assets/images/homed.png')),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Decorative Shelf',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Home Sparkle MDF Wall Mounted Floating Shelves | Open Cube Hanging Shelf with Hidden Brackets | Perfect Shelving Unit for Bedrooms, Offices, Living Rooms & Kitchens (Set of 3, Brown)',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹550',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green
                    ),
                    child: Center(child: Text('3.9',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('78,231 ratings')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('  Variety',style: TextStyle(
                    fontSize: 18,
                    fontWeight:FontWeight.bold
                ),),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 230),
                  child: Image.asset('assets/images/color.png',height: 40,),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Colors',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('B',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('P',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('G',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('Y',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('P',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: 400,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}