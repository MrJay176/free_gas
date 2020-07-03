import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cylinder extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return CylinderGas();
  }
}

class CylinderGas extends State<Cylinder>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child:Card(
        elevation:4.0,
        color:Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Align(
              alignment:Alignment.topLeft,
              child:Text(
                  '3KG Cylinder',
                  style:TextStyle(
                  fontSize:16.0,
                  color:Colors.orange,
                  fontWeight:FontWeight.bold,
        )
      ),

            ),
            SizedBox(
                height:10.0
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              crossAxisAlignment:CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.remove_circle_outline,
                  size:30.0,
                ),
                SizedBox(
                    width:10.0
                ),
                Text(
                    '4',
                  style:TextStyle(
                    fontSize:16.0
                  )
                ),
                SizedBox(
                    width:10.0
                ),
                Icon(
                  Icons.add_circle_outline,
                  size:30.0,
                ),
                SizedBox(
                    width:10.0
                ),
                Text(
                    'N4000',
                    style:TextStyle(
                    fontSize:16.0
                )
                )
              ],
            ),
            SizedBox(
                height:10.0
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: <Widget>[
                new RaisedButton(onPressed:(){
                },
                  child:new Text('ADD',
                    style:TextStyle(
                        color:Colors.white
                    ),
                  ),
                  elevation:3.0,
                  color:Colors.purple[800],
                ),
              ],

            ),
            SizedBox(
                height:10.0
            ),
          ],
        ),
      )
    );
  }

}