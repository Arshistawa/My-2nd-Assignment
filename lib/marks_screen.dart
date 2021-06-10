import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarksScreen extends StatelessWidget {
  final int marksReceived;
  const MarksScreen({Key? key,required this.marksReceived}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/back.jpg"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Container(
              margin: EdgeInsets.only(
                  top: 60, right: 20, left: 20, bottom: 100),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(17))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Congratulations!',
                    style: TextStyle(fontSize: 25, color: Colors.grey),),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('You got ', style: TextStyle(fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),),
                      Text('$marksReceived ', style: TextStyle(fontSize: 25,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold),),
                      Text('marks', style: TextStyle(fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),),
                    ],
                  ),

                ],

              ),
            ),
          ),


        ),
      ),
    );
  }}