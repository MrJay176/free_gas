
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freegas/items/shop_items.dart';

class order extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    return _order();
  }
}

class _order extends State<order>{

  bool gas_refill = true;
  bool gas_cylinder = false;

  bool _isScaffoldOne = true;
  bool _isScaffoldTwo = false;



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:new Container(
        child: Column(
          children: <Widget>[
            Container(
            margin:EdgeInsets.fromLTRB(10.0,5.0,10.0,5.0),
            height: 50.0,
            child:Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height:60.0,
                  margin:EdgeInsets.fromLTRB(2.0,2.9,2.0,2.0),
                  child:Padding(
                    padding:EdgeInsets.fromLTRB(5.0,1.0,5.0,1.0),
                    child:changeButtonColorRefill(gas_refill),
                  ),

                ),
                Container(
                  height:50.0,
                    margin:EdgeInsets.fromLTRB(2.0,2.9,2.0,2.0),
                    child:changeButtonColorCylinder(gas_cylinder)
                )
              ],
            ) ,
              ),

              Visibility(
                visible:_isScaffoldOne,
                child: Container(
                  child:Column(
                    children: <Widget>[
                      Shop(),
                      Shop(),
                      Shop(),
                      Shop(),
                      Shop(),
                      Shop(),
                      Shop(),
                      Shop(),
                      Shop(),
                      Shop(),
                      Shop(),
                      Shop(),
                      Shop(),
                      Shop(),
                      Shop(),
                    ],
                  )
                ),
              ),

            Visibility(
              visible:_isScaffoldTwo,
              child:Container(
                margin:EdgeInsets.fromLTRB(0.0,10.0,0.0,5.0) ,
                child:Column(
                  children: <Widget>[
                    Icon(
                      Icons.hourglass_empty,
                      size:40.0,
                    ),
                    Text(
                        'No Cylinder Purchases made',
                        style:TextStyle(
                          fontSize:16.0,
                          fontWeight:FontWeight.bold,
                          color:Colors.orange
                        )
                    )

                  ],

                )
              )
            )

          ],
        ),
      ) ,
    );
  }

  Widget changeButtonColorRefill(bool gas_refilll){
    return RaisedButton(
        color:gas_refilll?Colors.purple[700]:Colors.white,
        elevation:2.0,
        onPressed: (){
          if(!gas_refill)
            setState(() {
              gas_refill = true;
              gas_cylinder = false;
              _isScaffoldOne=true;
              _isScaffoldTwo=false;
              changeButtonColorRefill(true);
              changeButtonColorCylinder(false);

            });

        },
        child:changeTextColor(gas_refill)
    );

  }

  Widget changeTextColor(var text_bool){
    return Text(
      'GAS REFIll',
      style:TextStyle(
          color:text_bool ? Colors.white:Colors.black,
          fontWeight:FontWeight.bold
      ),
    );
  }

  Widget changeButtonColorCylinder(bool gas_refilll){
    return RaisedButton(
        color:gas_refilll?Colors.purple[700]:Colors.white,
        elevation:2.0,
        onPressed: (){
          if(!gas_cylinder)
            setState(() {
              gas_cylinder = true;
              gas_refill= false;
              _isScaffoldOne=false;
              _isScaffoldTwo=true;
              changeButtonColorRefill(false);
              changeButtonColorCylinder(false);
            });

        },
        child:changeTextColorCylinder(gas_cylinder)
    );

  }

  Widget changeTextColorCylinder(var text_bool){
    return Text(
      'GAS CYLINDER',
      style:TextStyle(
          color:text_bool ? Colors.white:Colors.black,
          fontWeight:FontWeight.bold
      ),
    );
  }
}