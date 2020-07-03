import 'package:flutter/material.dart';

class profile extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _profile();
  }

}

class _profile extends State<profile>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
         child:new Container(
           child:Padding(
             padding:EdgeInsets.fromLTRB(7.0,3.0,4.0,1.0),
             child: Column(
               children: <Widget>[
                 Text(
                   'Mary John',
                    style:TextStyle(
                      color:Colors.black,
                      fontSize:18.0,
                )),
                 SizedBox(height:8.0),
                 Text(
                     '+2347067149975',
                     style:TextStyle(
                       color:Colors.orange,
                       fontSize:18.0,
                       fontWeight:FontWeight.bold
                     )
                 ),
                 SizedBox(height:8.0),
                 Container(
                   height:280.0,
                   child: Card(
                     elevation:4.0,
                     color:Colors.purple[900],
                     child: Column(
                       children: <Widget>[
                         Row(
                           mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                         children: <Widget>[
                           Container(
                             margin:EdgeInsets.fromLTRB(5.0,5.0,5.0,5.0) ,
                             child: Icon(
                               Icons.person,
                               color:Colors.white,
                               size:30.0
                             ),
                           ),
                           SizedBox(width:10.0),
                           Container(
                             margin:EdgeInsets.fromLTRB(5.0,5.0,5.0,5.0) ,
                             child: Text(
                               'Profile Setting',
                                 style:TextStyle(
                                   fontWeight:FontWeight.bold,
                                   fontSize:22.0,
                                   color:Colors.white
                                 ),
                             ),
                           ),
                           SizedBox(width:10.0),
                           Container(
                             margin:EdgeInsets.fromLTRB(5.0,5.0,5.0,5.0) ,
                             child: Text(
                               'Edit',
                                style:TextStyle(
                                    fontWeight:FontWeight.bold,
                                    fontSize:20.0,
                                    color:Colors.white
                                )
                             ),
                           )
                         ],
                         ),
                         SizedBox(height:20.0),
                         Row(
                           mainAxisAlignment:MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Container(
                               margin:EdgeInsets.fromLTRB(5.0,5.0,5.0,5.0) ,
                               child: Text(
                                 'Full Name',
                                 style:TextStyle(
                                     fontWeight:FontWeight.bold,
                                     fontSize:14.0,
                                     color:Colors.white
                                 ),
                               ),
                             ),

                             Container(
                               margin:EdgeInsets.fromLTRB(5.0,5.0,5.0,5.0) ,
                               child: Text(
                                 'Mary John',
                                 style:TextStyle(
                                     fontWeight:FontWeight.bold,
                                     fontSize:14.0,
                                     color:Colors.white
                                 ),
                               ),
                             ),
                           ],
                         ),
                         SizedBox(height:20.0),
                         Row(
                           mainAxisAlignment:MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Container(
                               margin:EdgeInsets.fromLTRB(5.0,5.0,5.0,5.0) ,
                               child: Text(
                                 'Email',
                                 style:TextStyle(
                                     fontWeight:FontWeight.bold,
                                     fontSize:14.0,
                                     color:Colors.white
                                 ),
                               ),
                             ),
                             Container(
                               margin:EdgeInsets.fromLTRB(5.0,5.0,5.0,5.0) ,
                               child: Text(
                                 'MaryJohn@yahoo.com',
                                 style:TextStyle(
                                     fontWeight:FontWeight.bold,
                                     fontSize:14.0,
                                     color:Colors.white
                                 ),
                               ),
                             ),
                           ],
                         ),
                         SizedBox(height:20.0),
                         Row(
                           mainAxisAlignment:MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Container(
                               margin:EdgeInsets.fromLTRB(5.0,5.0,5.0,5.0) ,
                               child: Text(
                                 'Phone',
                                 style:TextStyle(
                                     fontWeight:FontWeight.bold,
                                     fontSize:14.0,
                                     color:Colors.white
                                 ),
                               ),
                             ),
                             Container(
                               margin:EdgeInsets.fromLTRB(5.0,5.0,5.0,5.0) ,
                               child: Text(
                                 '+2347067149975',
                                 style:TextStyle(
                                     fontWeight:FontWeight.bold,
                                     fontSize:14.0,
                                     color:Colors.white
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ],
                     ),
                   ),
                 ),
                 SizedBox(height:8.0),
                 Container(
                   height:300.0,
                   child: Card(
                     elevation:4.0,
                     color:Colors.purple[900],
                     child: Column(
                       children: <Widget>[
                         Row(
                           mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                           children: <Widget>[
                             Container(
                               margin:EdgeInsets.fromLTRB(5.0,5.0,5.0,5.0) ,
                               child: Icon(
                                   Icons.settings,
                                   color:Colors.white,
                                   size:30.0
                               ),
                             ),
                             SizedBox(width:10.0),
                             Container(
                               margin:EdgeInsets.fromLTRB(5.0,5.0,5.0,5.0) ,
                               child: Text(
                                 'Account Setting',
                                 style:TextStyle(
                                     fontWeight:FontWeight.bold,
                                     fontSize:22.0,
                                     color:Colors.white
                                 ),
                               ),
                             ),
                             SizedBox(width:10.0),
                             Container(
                               margin:EdgeInsets.fromLTRB(5.0,5.0,5.0,5.0) ,
                               child: Text(
                                   'Edit',
                                   style:TextStyle(
                                       fontWeight:FontWeight.bold,
                                       fontSize:20.0,
                                       color:Colors.white
                                   )
                               ),
                             )
                           ],
                         ),
                         SizedBox(height:25.0),
                         Text(
                           '! Helps and Tips',
                           style:TextStyle(
                             color:Colors.white,
                             fontWeight:FontWeight.bold,
                             fontSize:20.0
                           )
                         ),
                         SizedBox(height:30.0),
                         Row(
                           mainAxisAlignment:MainAxisAlignment.center,
                           children: <Widget>[
                             Icon(
                               Icons.power_settings_new,
                               size:30.0,
                               color:Colors.white,
                             ),
                             Text(
                               'Log Out',
                               style:TextStyle(
                                   color:Colors.white,
                                   fontWeight:FontWeight.bold,
                                   fontSize:20.0
                               )
                             )
                           ],
                         ),
                       ],
                     ),
                   ),
                 ),
                 SizedBox(height:8.0),
                 Container(
                   height:300.0,
                   child: Card(
                     elevation:4.0,
                     color:Colors.purple[900],
                     child: Column(
                       children: <Widget>[
                         Text(
                           'Activity',
                           style:TextStyle(
                               fontWeight:FontWeight.bold,
                               fontSize:18.0,
                               color:Colors.white
                           ),
                         ),

                         SizedBox(height:20.0),
                         Row(
                           mainAxisAlignment:MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Container(
                               margin:EdgeInsets.fromLTRB(5.0,5.0,5.0,5.0) ,
                               child: Text(
                                 'Pending Oders',
                                 style:TextStyle(
                                     fontWeight:FontWeight.bold,
                                     fontSize:14.0,
                                     color:Colors.orange
                                 ),
                               ),
                             ),

                             Container(
                               margin:EdgeInsets.fromLTRB(5.0,5.0,5.0,5.0) ,
                               child: Text(
                                 '9 pending',
                                 style:TextStyle(
                                     fontWeight:FontWeight.bold,
                                     fontSize:14.0,
                                     color:Colors.white
                                 ),
                               ),
                             ),
                           ],
                         ),
                         SizedBox(height:20.0),
                         Row(
                           mainAxisAlignment:MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Container(
                               margin:EdgeInsets.fromLTRB(5.0,5.0,5.0,5.0) ,
                               child: Text(
                                 'Approved Orders',
                                 style:TextStyle(
                                     fontWeight:FontWeight.bold,
                                     fontSize:14.0,
                                     color:Colors.orange
                                 ),
                               ),
                             ),

                             Container(
                               margin:EdgeInsets.fromLTRB(5.0,5.0,5.0,5.0) ,
                               child: Text(
                                 '5 Approved',
                                 style:TextStyle(
                                     fontWeight:FontWeight.bold,
                                     fontSize:14.0,
                                     color:Colors.white
                                 ),
                               ),
                             ),
                           ],
                         ),
                         SizedBox(height:20.0),
                         Row(
                           mainAxisAlignment:MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Container(
                               margin:EdgeInsets.fromLTRB(5.0,5.0,5.0,5.0) ,
                               child: Text(
                                 'Declined Orders',
                                 style:TextStyle(
                                     fontWeight:FontWeight.bold,
                                     fontSize:14.0,
                                     color:Colors.orange
                                 ),
                               ),
                             ),

                             Container(
                               margin:EdgeInsets.fromLTRB(5.0,5.0,5.0,5.0) ,
                               child: Text(
                                 '5 Declined',
                                 style:TextStyle(
                                     fontWeight:FontWeight.bold,
                                     fontSize:14.0,
                                     color:Colors.white
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ],
                     ),
                   ),
                 )
               ],
             ),
           )
         )
    );
  }

}