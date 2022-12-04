//Wap in Flutter To Design A Hair Products Page
import 'package:flutter/material.dart';
import 'package:untitled/shopsy.dart';
class Hair extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hair Oil'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('assets/images/hair.webp')),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Hair Care Products',style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Text('Advansed Onion Hair Oil |Hair Growth Oil| Reduces hairfall | With Natural Coconut Oil, Onion Extracts, Vitamin E|200ml',style: TextStyle(
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
                    child: Center(child: Text('3.2',style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('42,534 ratings')
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