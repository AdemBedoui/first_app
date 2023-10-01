import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
       const MaterialApp(
      home: Scaffold(
       // backgroundColor: Colors.black54,
        body: GradientContainer(
         Color.fromARGB(255, 80, 2, 38),
         Color.fromARGB(255, 69, 15, 122)
        ),
      ),
    ),
  );
}




Widget myCustomText(String msg){
    return Text(
            msg,
            style: TextStyle(
              color: Colors.black87,
             // backgroundColor: Colors.amber,
              fontSize: 30,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
              letterSpacing: -2,
              wordSpacing: 8,
              height: 10,
              shadows: const [

                Shadow(
                  color: Colors.amber,
                  offset: Offset(15, 10) ,
                  blurRadius: 4,
                ),
              ],
              decoration: TextDecoration.combine([
                TextDecoration.overline,
                TextDecoration.underline,
                TextDecoration.lineThrough,


              ]),

              decorationColor: Colors.blueAccent,
              decorationStyle: TextDecorationStyle.wavy,
              decorationThickness: 1,


            ),
            );


  }

