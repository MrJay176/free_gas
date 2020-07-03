import 'package:flutter/material.dart';

class FirstGas extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return First();
  }

}

class First extends State<FirstGas>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Text(
          'REFILL GAS',
              style:TextStyle(
                color:Colors.orange,
                fontWeight:FontWeight.bold,
                fontSize:19.0
              )
        ),
        Text(
            'Click On the gas cylinder to request a refill',
            style:TextStyle(
                color:Colors.black26,
                fontWeight:FontWeight.bold,
                fontSize:16.0
            )
        ),
        Wrap(
          direction: Axis.horizontal,
          children: <Widget>[
            Image.asset(
              'assets/images/three.jpg',
                  height:200,
                  width:100
            ),
            Image.asset(
                'assets/images/six.jpg',
                height:200,
                width:100
            ),
            Image.asset(
                'assets/images/twelve.jpg',
                height:200,
                width:100
            ),

          ],
        )
      ],
    );

  }



}