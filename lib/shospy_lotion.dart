//Wap in Flutter To Design A Lotion Page
import 'package:flutter/material.dart';
import 'package:untitled/shopsy.dart';
class Lotion extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lotion'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('assets/images/lotion.webp')),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Nivea Body lotion',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('NIVEA Body Lotion for Very Dry Skin, Nourishing Body Milk with 2x Almond Oil for 48H Moisturization, For Men & Women, 400 ml',style: TextStyle(
                fontSize: 18,
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('₹360',style: TextStyle(
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
                  Text('74,421 ratings')
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
          ],
        ),
      ),
    );
  }
}