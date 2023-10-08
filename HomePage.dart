import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizz/question2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Color ansColor=Colors.deepPurple;
  Color wrong1Color=Colors.deepPurple;
  Color wrong2Color=Colors.deepPurple;
  Color wrong3Color=Colors.deepPurple;

  Color rightColor=Colors.white54;
  String correct="CORRECT ANSWER";

  startTimer() async{
    var duration=Duration(seconds:2);
    return Timer(duration,route);
  }
  route() {
    return Navigator.push(
        context, MaterialPageRoute(builder: (c) => question2()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Quizz App",

      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),),),

      body: Padding(
        padding: EdgeInsets.all(15),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
              const [
                Text('How Many Keywords \n Are There In C++?',
                textAlign: TextAlign.left,
                maxLines: 3,
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),

                )
              ],
              ),
              SizedBox(height: 70,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: (){
                        setState(() {
                          ansColor=Colors.green;
                          rightColor=Colors.green;
                          startTimer();
                        });
                  },
                    style: TextButton.styleFrom(
                      backgroundColor: ansColor,
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                      fixedSize: Size(350, 50),
                    ), child:
                  Text(
                      "95",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: (){
                      setState(() {
                        wrong1Color=Colors.red;
                        correct="WRONG ANSWER";
                        rightColor=Colors.red;
                        startTimer();
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: wrong1Color,
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                      fixedSize: Size(350, 50),
                    ), child:
                  Text(
                    "85",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(

                    onPressed: (){
                      setState(() {
                        wrong2Color=Colors.red;
                        correct="WRONG ANSWER";
                        rightColor=Colors.red;
                        startTimer();
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: wrong2Color,
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                      fixedSize: Size(350, 50),
                    ), child:
                  Text(
                    "81",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(

                    onPressed: (){
                      setState(() {
                        wrong3Color=Colors.red;
                        correct="WRONG ANSWER";
                        rightColor=Colors.red;
                        startTimer();
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: wrong3Color,
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                      fixedSize: Size(350, 50),
                    ), child:
                  Text(
                    "79",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                  ),
                ],
              ),
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("$correct",
                  style: TextStyle(
                    color: rightColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
              SizedBox(height: 30,)
            ],
          ),
        ),

      ),
    );
  }
}
