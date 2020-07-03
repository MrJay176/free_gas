import 'package:flutter/material.dart';
import 'package:freegas/items/cylinder_sale.dart';


class buy extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return new _buy();
  }
}

 class _buy extends State<buy>{
  @override
  Widget build(BuildContext context) {
  return SingleChildScrollView(
    child:Container(
      child:Column(
       children: <Widget>[
         Align(
           alignment:Alignment.topLeft,
           child: Container(
             margin:EdgeInsets.fromLTRB(10.0,5.0,10.0,5.0),
             child: Text(
               'Green Spring Estate Road Uyo,uyo',
                   style:TextStyle(
                   color:Colors.black38,
                   fontSize:19.0
             )
             ),
           ),
         ),
         SizedBox(
           height:10.0
         ),
         Align(
           alignment:Alignment.centerRight,
           child: Container(
             margin:EdgeInsets.fromLTRB(10.0,1.0,10.0,5.0),
             child: Text(
                 'Change Address',
                 style:TextStyle(
                     color:Colors.purple[500],
                     fontSize:15.0,
                     fontWeight:FontWeight.bold
                 )
             ),
           ),
         ),
         SizedBox(
             height:10.0
         ),
         Align(
           alignment:Alignment.bottomLeft,
           child: Container(
             margin:EdgeInsets.fromLTRB(10.0,1.0,10.0,5.0) ,
             child: Text(
                 'Nearest Location',
                 style:TextStyle(
                 color:Colors.black38,
                 fontSize:19.0
             )
             ),
           ),
         ),
         Container(
           height:50.0,
           margin:EdgeInsets.fromLTRB(10.0,5.0,10.0,5.0),
           decoration:BoxDecoration(
             shape:BoxShape.rectangle,
             border:Border.all(color:Colors.grey)
           ),
           child:Row(
             mainAxisAlignment:MainAxisAlignment.spaceBetween,
             children: <Widget>[
               Align(
               alignment:Alignment.centerLeft,
                 child: Text(
                   '--Select--'
                 ),
               ),
               Align(
                 alignment:Alignment.centerRight,
                 child: Container(
                   child: Icon(
                     Icons.arrow_drop_down,
                     size:24,
                   ),
                 ),
               )
             ],
             ),
         ),
         SizedBox(
             height:10.0
         ),
      Container(
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
                        '1',
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
      ),
      Container(
          child:Card(
            elevation:4.0,
            color:Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Align(
                  alignment:Alignment.topLeft,
                  child:Text(
                      '6KG Cylinder',
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
                        '2',
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
                        'N8000',
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
      ),
      Container(
          child:Card(
            elevation:4.0,
            color:Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Align(
                  alignment:Alignment.topLeft,
                  child:Text(
                      '12.5KG Cylinder',
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
                        '3',
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
                        'N15000',
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
      ),
      Container(
          child:Card(
            elevation:4.0,
            color:Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Align(
                  alignment:Alignment.topLeft,
                  child:Text(
                      '25KG Cylinder',
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
                        'N23000',
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
      ),Container(
        child:Card(
          elevation:4.0,
          color:Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Align(
                alignment:Alignment.topLeft,
                child:Text(
                    '50KG Cylinder',
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
                      'N40000',
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
    )
       ],
      )
    )
  );

  }

}