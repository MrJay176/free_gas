import 'package:flutter/material.dart';

class Shop extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
  return ShopMain();
  }

}

class ShopMain extends State<Shop>{

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.fromLTRB(5.0,5.0,5.0,0.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: Text(
                  'Order ID:#92',
                  style: TextStyle(
                    color:Colors.orange
                  ),
                ),
              ),
              Align(
                alignment:Alignment.topRight,
                child: Text(
                  'Order Created',
                  style: TextStyle(
                      color:Colors.black26
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                'Green Spring Estate Road Uyo',
                style: TextStyle(
                    color:Colors.black26
                ),
              ),
              Align(
                alignment:Alignment.centerRight,
                child: Text(
                  '2020-06-13',
                  style: TextStyle(
                      color:Colors.black26
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                '1 of 12.5KG',
                style: TextStyle(
                    color:Colors.orange
                ),
              ),
              Align(
                alignment:Alignment.bottomRight,
                child: Text(
                  'NGN4000.00',
                  style: TextStyle(
                      color:Colors.black26
                  ),
                ),
              ),
            ],
          )
        ],
      )
    );
  }



}