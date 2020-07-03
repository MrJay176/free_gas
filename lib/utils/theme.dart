import 'package:flutter/material.dart';

ThemeData MyCustomTheme(){
  TextTheme my_textTheme(TextTheme base){
    return base.copyWith(
      headline1: base.headline1.copyWith(
           fontSize: 20,
          fontWeight:FontWeight.bold,
        color:Colors.orange[400]
      ),

     headline2:base.headline1.copyWith(
         fontSize: 20,
         fontWeight:FontWeight.bold,
         color: Colors.green[400]
    ),

    headline3: base.headline1.copyWith(
        fontSize:16,
        fontWeight:FontWeight.bold,
        color: Colors.black54
    ),

      headline4: base.headline1.copyWith(
          fontSize:20,
          fontWeight:FontWeight.bold,
          color: Colors.purple[800]
      )
    );


  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: my_textTheme(base.textTheme) ,
    primaryColor: Colors.white,
  );

}
