import 'package:flutter/material.dart';

class NameContainer extends StatelessWidget {
  const NameContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hey! john',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 33,color: Colors.white),),
              SizedBox(height: 5,),
              Text('welcome to the loyalty app',style: TextStyle(color: Colors.white70),)
            ],

          ),
           Container(
             decoration: BoxDecoration(
               color: Color(0xC9270F26),
               boxShadow: [
                 BoxShadow(
                   color: Colors.grey.withOpacity(0.5),
                   spreadRadius: 1,
                   blurRadius: 02,
                   offset: Offset(0, 1), // changes position of shadow
                 ),
               ],
               borderRadius: BorderRadius.circular(10), // Adjust the value for roundness
             ),
             width: 100,




              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Icon(Icons.star_outlined,color: Colors.yellowAccent,),
                  Text('1562',style: TextStyle(color: Colors.white,fontSize: 18),)
                ],),
              ),
            ),
          
        ],
      ),
    );
  }
}
