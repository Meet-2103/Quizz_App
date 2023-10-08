import 'package:flutter/material.dart';
import 'package:quizz/HomePage.dart';

class last extends StatefulWidget {
  const last({Key? key}) : super(key: key);

  @override
  State<last> createState() => _lastState();
}

class _lastState extends State<last> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Row(
          mainAxisAlignment: MainAxisAlignment.center,
              children:[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (c)=>HomePage()));
                  },
                  child: Text('RESTART'),
                  style:
                  ElevatedButton.styleFrom(shape: StadiumBorder()),

                )
              //   TextButton(onPressed: (){
              //   Navigator.push(context, MaterialPageRoute(builder: (c)=>HomePage()));
              // },
              //       style: TextButton.styleFrom(
              //         shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
              //
              //       ),
              //     child: Text("RESTART QUIZZ",
              //     style: TextStyle(
              //       fontSize: 40,
              //       fontWeight: FontWeight.bold,
              //       color: Colors.white,
              //       backgroundColor: Colors.deepPurple,
              //     ),)),

      ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
