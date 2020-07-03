import 'package:flutter/material.dart';
import 'package:freegas/utils/theme.dart';
import 'package:freegas/auth/sign_in.dart';


void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget{

  @override
  _myAppState createState() => _myAppState();

}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Free Gas',
      theme:ThemeData(
          primaryColor:Colors.purple[700]
      ),
      //theme:MyCustomTheme(),
      home: SignIn(),
    );
  }
}





