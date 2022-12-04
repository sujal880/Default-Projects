import 'package:flutter/material.dart';

class Buffalo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60),
          Image.asset('assets/images/home-milk-1.png'),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('Buffalo Milk',style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('Fresh Dairy Farm Buffalo\nMilk',style: TextStyle(
              fontSize: 18,
            ),),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10),
            child: Text('₹200L',style: TextStyle(
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
                      color: Colors.blue
                  ),
                  child: Center(child: Text('4.5',style: TextStyle(
                      color: Colors.white
                  ),)),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('97,547 ratings'),
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
              SizedBox(width: 10),
              Text('  Quantity',style: TextStyle(
                  fontSize: 18,
                  fontWeight:FontWeight.bold
              ),),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 200),
                child: Image.asset('assets/images/height.png',height: 40,),
              ),
              SizedBox(
                width: 10,
              ),
              Text('Litres',style: TextStyle(
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
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('1',style: TextStyle(
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
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('2',style: TextStyle(
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
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('3',style: TextStyle(
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
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('4',style: TextStyle(
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
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(child: Text('5',style: TextStyle(
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
          ),
        ],
      ),
    );
  }

}