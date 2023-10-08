import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizz/last.dart';

class question3 extends StatefulWidget {
  const question3({Key? key}) : super(key: key);

  @override
  State<question3> createState() => _question3State();
}

class _question3State extends State<question3> {

  Color ansColor=Colors.deepPurple;
  Color wrong1Color=Colors.deepPurple;
  Color wrong2Color=Colors.deepPurple;
  Color wrong3Color=Colors.deepPurple;

  Color rightColor=Colors.white54;
  String correct="CORRECT ANSWER";


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
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                const [
                  Text('Which of the following\n user-defined header \n file extension used in\n  c++?',
                    textAlign: TextAlign.left,
                    maxLines: 4,
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),

                  )
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: (){
                      setState(() {
                        wrong2Color=Colors.red;
                        rightColor=Colors.red;
                        correct="WRONG ANSWER";
                        Navigator.push(context, MaterialPageRoute(builder: (c)=>last()));
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: wrong2Color,
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                      fixedSize: Size(350, 50),
                    ), child:
                  Text(
                    "hg",
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
                        Navigator.push(context, MaterialPageRoute(builder: (c)=>last()));
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: wrong1Color,
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                      fixedSize: Size(350, 50),
                    ), child:
                  Text(
                    "cpp",
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
                        ansColor=Colors.green;
                        correct="RIGHT ANSWER";
                        rightColor=Colors.green;
                        Navigator.push(context, MaterialPageRoute(builder: (c)=>last()));
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: ansColor,
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                      fixedSize: Size(350, 50),
                    ), child:
                  Text(
                    "h",
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
                        Navigator.push(context, MaterialPageRoute(builder: (c)=>last()));
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: wrong3Color,
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                      fixedSize: Size(350, 50),
                    ), child:
                  Text(
                    "hf",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                  ),
                ],
              ),
              SizedBox(height: 10,),

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
              SizedBox(height: 10,)


            ],
          ),
        ),

      ),
    );
  }
}
