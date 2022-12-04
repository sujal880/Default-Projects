//Wap in Flutter To Design Watch Page
import 'package:flutter/material.dart';
import 'package:untitled/shopsy.dart';
class Watch_9 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watches'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('assets/images/watch9.png')),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Citizen',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Circle Silver Dial With Silicon\nStrap Addi-For Boys',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹1100',style: TextStyle(
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
                    child: Center(child: Text('4.0',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('60,000 ratings')
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
class Watch_10 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watches'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/watch10.webp'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('G-Shock',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Circle Dial With Silicon\nStrap Addi-For Boys',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹1200',style: TextStyle(
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
                    child: Center(child: Text('4.4',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('70,000 ratings')
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
class Watch_11 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watches'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('assets/images/watch11.webp')),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Rolex',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Circle Golden Dial With Stainless Steel\nStrap Addi-For Boys',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹329865',style: TextStyle(
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
                    child: Center(child: Text('5.0',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('80,000 ratings')
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