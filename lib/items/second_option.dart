import 'package:flutter/material.dart';

class StateGas extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    return StateG();
  }

}

class StateG extends State<StateGas>{

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
            'More Gas Refill Options',
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
                'assets/images/tfive.jpg',
                height:200,
                width:100
            ),
            Image.asset(
                'assets/images/fifty.jpg',
                height:200,
                width:100
            ),
            Image.asset(
                'assets/images/more.jpg',
                height:200,
                width:100
            ),

          ],
        )
      ],
    );

  }



}