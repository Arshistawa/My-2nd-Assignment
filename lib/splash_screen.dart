
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/home_screen.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/freepick.jpg"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 150),
              Text('Trivia\n Wars'.toUpperCase(),
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
                    ),
              SizedBox(height:80),
              Padding(
                padding: const EdgeInsets.only(bottom: 5
                ),
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 35, vertical: 13),
                      side: BorderSide(width: 1.0, color: Colors.grey),
                      shape: RoundedRectangleBorder(borderRadius:
                      BorderRadius.circular(40.0),
                      ),),
                    child: Text('Start Playing'.toUpperCase(),style: TextStyle(fontSize: 10,color: Colors.black),)),
              ),
            ],
          ),
        ),//body
    )
    );
  }
}
