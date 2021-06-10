import 'package:flutter/material.dart';
import 'package:quiz_app/marks_screen.dart';
import 'package:quiz_app/options.dart';
import 'package:quiz_app/questions.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Question> questions=[Question('The term Computer is derived from?', 'Latin'),
    Question('Who is the father of Computer?', ' Charles Babbage'),
    Question('The basic operations performed by a computer are', 'All the above')
    ,Question('Who is the father of Internet ?', ' Vint Cerf'),Question('If a computer has more than one processor then it is known as?', 'Multiprocessor'),
    Question('A light sensitive device that converts drawing, printed text or other images into digital form is?', ' Scanner'),Question('WWW stands for?', 'World Wide Web')
    ,Question('A collection of system programs that controls and co-ordinates the overall operations of a computer system is called?', 'Operating system'),Question('What type of operating system MS-DOS is?', 'Command Line Interface'),
    Question('Which technology is used in compact disks?', 'Laser')];
  List<Options> options=[
    Options('Latin', 'German','French','Arabic'),
    Options('Allen Turing', 'Charles Babbage', 'Simur Cray','Augusta Adaming'),
    Options('Arithmetic operation', ' Logical operation', 'Storage and relative',' All the above'),
    Options('Chares Babbage', 'Vint Cerf', 'Denis Riche','Martin Cooper'),
    Options(' Uni-process', 'Multiprocessor', 'Multi-threaded','Multi-programming'),
    Options('Keyboard', 'Scanner', 'OMR',' None of these'),
    Options('World Whole Web', 'Wide World Web', 'Web World Wide','World Wide Web'),
    Options(' System software', 'Operating system', 'Utility program','Device driver'),
    Options('Command Line Interface', 'Graphical User Interface', 'Multitasking','Menu Driven Interface'),
    Options('Mechanical', ' Electrical', 'Electro Magnetic',' Laser'),
    ];
  int count=0;
  int marks=0;
  int counter=10;
  bool _flag = true;
  double progress=0.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/back.jpg"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            margin: EdgeInsets.only(top:60,right: 20,left: 20,bottom:100),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(17))),
            child:  Padding(
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 20),
                  Center(child: Text('$count/10',style: TextStyle(fontSize: 15,color: Colors.black),)),
                  SizedBox(height: 20),
                  Center(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 40.0,
                          child: Stack(
                            children: <Widget>[
                              Center(
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  child: new CircularProgressIndicator(
                                    backgroundColor: Colors.grey,
                                    strokeWidth: 4,
                                    value: progress,
                                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
                                  ),
                                ),
                              ),
                              Center(child: Text('$counter',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(questions[count].text,
                      style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                  Spacer(),
                  ElevatedButton(
                      onPressed: (){
                        if(questions[count].answer==options[count].firstOption){
                          marks=marks+10;

                        }
                        if(count==9){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MarksScreen(marksReceived:marks),
                              ));
                          return;
                        }
                        count++;
                        counter--;
                        progress=progress+0.1;
                        setState(() {

                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black,
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        side: BorderSide(width: 1.0, color: Colors.grey),
                        shape: RoundedRectangleBorder(borderRadius:
                        BorderRadius.circular(40.0),
                        ),),
                      child: Text(options[count].firstOption,style: TextStyle(fontSize: 15),)),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                        onPressed: (){
                          if(questions[count].answer==options[count].secondOption){
                            marks=marks+10;
                          }
                          if(count==9){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MarksScreen(marksReceived:marks),
                                ));
                            return;
                          }
                          count++;
                          counter--;
                          progress=progress+0.1;
                          setState(() {

                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                          side: BorderSide(width: 1.0, color: Colors.grey),
                          shape: RoundedRectangleBorder(borderRadius:
                          BorderRadius.circular(40.0),
                          ),),
                        child: Text(options[count].secondOption,style: TextStyle(fontSize: 15),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                        onPressed: (){
                          if(questions[count].answer==options[count].thirdOption){
                            marks=marks+10;
                          }
                          if(count==9){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MarksScreen(marksReceived:marks),
                                ));
                            return;
                          }
                          count++;
                          counter--;
                          progress=progress+0.1;
                          setState(() {

                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                          side: BorderSide(width: 1.0, color: Colors.grey),
                          shape: RoundedRectangleBorder(borderRadius:
                          BorderRadius.circular(40.0),
                          ),),
                        child: Text(options[count].thirdOption,style: TextStyle(fontSize: 15),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 40),
                    child: ElevatedButton(
                        onPressed: (){
                          if(questions[count].answer==options[count].fourthOption){
                            marks=marks+10;
                          }
                          if(count==9){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MarksScreen(marksReceived:marks),
                                ));
                            return;
                          }
                          count++;
                          counter--;
                          progress=progress+0.1;
                          setState(() {

                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                          side: BorderSide(width: 1.0, color: Colors.grey),
                          shape: RoundedRectangleBorder(borderRadius:
                          BorderRadius.circular(40.0),
                          ),),
                        child: Text(options[count].fourthOption,style: TextStyle(fontSize: 15),)),
                  ),
                ],

              ),
            ),
          ),
        ),



      ),
    );
  }
}
