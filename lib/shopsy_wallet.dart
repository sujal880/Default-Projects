import 'package:flutter/material.dart';
import 'package:untitled/shopsy.dart';
class Wallet_1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallets'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/wallet1.webp'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Leather Wallet',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Men Regular use Hand Stiched\nLeather Wallet',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹399',style: TextStyle(
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
                  Text('45,347 ratings')
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
                  padding: const EdgeInsetsDirectional.only(start: 200),
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
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text('B',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),)),
                  ),
                ],
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
class Wallet_2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallets'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/wallet2.png'),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Wallet Store',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Men Regular use Hand Stiched\nLeather Wallet',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹699',style: TextStyle(
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
                    child: Center(child: Text('4.7',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('63,679 ratings')
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
                  padding: const EdgeInsetsDirectional.only(start: 200),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('B',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
              ],
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
class Wallet_3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallets'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/wallet3.webp'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Black Leather',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Men Regular use Hand Stiched\nLeather Wallet',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹499',style: TextStyle(
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
                    child: Center(child: Text('2.1',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('25,437 ratings')
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
                  padding: const EdgeInsetsDirectional.only(start: 200),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('B',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
              ],
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
class Wallet_4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallets'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/wallet.png'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Zip Leather Wallet',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Men Regular use Hand Stiched\nLeather Wallet',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹799',style: TextStyle(
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
                    child: Center(child: Text('4.6',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('73,327 ratings')
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
                  padding: const EdgeInsetsDirectional.only(start: 200),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('B',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
              ],
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
class Wallet_5 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallets'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/wallet4.webp'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Leather World',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Men Regular use Hand Stiched\nLeather Wallet',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹299',style: TextStyle(
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
                    child: Center(child: Text('2.1',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('15,202 ratings')
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
                  padding: const EdgeInsetsDirectional.only(start: 200),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('B',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
              ],
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
class Wallet_6 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallets'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/wallet5.png'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Leather World',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Men Regular use Hand Stiched\nLeather Wallet',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹599',style: TextStyle(
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
                    child: Center(child: Text('3.0',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('35,543 ratings')
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
                  padding: const EdgeInsetsDirectional.only(start: 200),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('B',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
              ],
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
class Wallet_7 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallets'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/wallet6.png'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Red Leather',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Men Regular use Hand Stiched\nLeather Wallet',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹799',style: TextStyle(
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
                    child: Center(child: Text('4.2',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('66,321 ratings')
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
                  padding: const EdgeInsetsDirectional.only(start: 200),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('B',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width:10
                ),
                Container(
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(
                    child: Text('R',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                  ),
                ),
              ],
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
class Wallet_8 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallets'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/wallet7.webp'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Leather World',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Men Regular use Hand Stiched\nLeather Wallet',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹699',style: TextStyle(
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
                    child: Center(child: Text('4.1',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('75,109 ratings')
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
                  padding: const EdgeInsetsDirectional.only(start: 200),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('B',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
              ],
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
class Wallet_9 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallets'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/wallet8.png'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Black Leather',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Men Regular use Hand Stiched\nLeather Wallet',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹299',style: TextStyle(
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
                    child: Center(child: Text('3.4',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('29,127 ratings')
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
                  padding: const EdgeInsetsDirectional.only(start: 200),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('B',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)),
                ),
              ],
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
