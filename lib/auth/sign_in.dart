import 'package:flutter/material.dart';
import 'package:freegas/auth/sign_up.dart';

class SignIn extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return sign_in();
  }
}

class sign_in extends State<SignIn>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        primaryColor:Colors.deepPurple[500]
      ),
      home: Scaffold(
          body:SafeArea(
            child: SingleChildScrollView(
              child: Container(
                width:MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.height,
                decoration:BoxDecoration(
                    gradient:LinearGradient(
                        begin:Alignment.topCenter,
                        end:Alignment.bottomCenter,
                        colors:[Colors.deepPurple[700],Colors.deepPurple[500]]
                    )
                ),
                child:Padding(
                  padding:EdgeInsets.fromLTRB(10.0,1.0,10.0,0.0),
                  child:Column(
                    crossAxisAlignment:CrossAxisAlignment.center,
                    mainAxisSize:MainAxisSize.max,
                    mainAxisAlignment:MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        height:70.0,
                        width:70.0,
                        margin:EdgeInsets.fromLTRB(10.0,4.0,10.0,9.0),
                        decoration:BoxDecoration(
                            shape:BoxShape.rectangle,
                            color: Colors.black45,
                            image:DecorationImage(
                              image:AssetImage('assets/images/chef.jpg'),
                              fit:BoxFit.cover,
                            )
                        ) ,
                      ),

                      Container(
                        margin:EdgeInsets.fromLTRB(10.0,4.0,10.0,15.0),
                        child: Text('Free Gas247',
                            style:TextStyle(
                                color:Colors.white,
                                fontWeight:FontWeight.bold,
                                 fontSize:20.0,
                            )
                        ),
                      ),
                      Container(
                        margin:EdgeInsets.fromLTRB(10.0,4.0,10.0,10.0),
                        child: Text('Gas Delivery Made Easy',
                            style:TextStyle(
                                color:Colors.white,
                                fontWeight:FontWeight.bold,
                              fontSize:15.0
                            )
                        ),
                      ),

                  Container(
                             height:MediaQuery.of(context).size.height/2+110.0,
                             width:MediaQuery.of(context).size.width,
                             child: Card(
                               shape:RoundedRectangleBorder(
                                 borderRadius:BorderRadius.only(
                                   topRight:Radius.circular(10),
                                   topLeft: Radius.circular(10)
                                 )
                               ),
                               elevation:4.0,
                               color:Colors.white,
                              child:Column(
                                children: <Widget>[
                                  Container(
                                    margin:EdgeInsets.fromLTRB(0.0,2.0,0.0,3.0),
                                    child: Text(
                                      'Sign In',
                                      style:TextStyle(
                                        color:Colors.black,
                                        fontWeight:FontWeight.bold,
                                        fontSize:20.0
                                      )
                                    ),
                                  ),
                                  Container(
                                    height:50.0,
                                    margin:EdgeInsets.fromLTRB(10.0,4.0,10.0,4.0) ,
                                    decoration: BoxDecoration(
                                      borderRadius:BorderRadius.circular(6),
                                      border:Border.all(color:Colors.purple[400])
                                    ),
                                    child:TextField(
                                      decoration:InputDecoration(
                                       border:InputBorder.none,
                                       labelText:'Email',
                                        fillColor:Colors.orange[400],
                                      ),
                                    ) ,
                                  ),
                                  Container(
                                    height:50.0,
                                    margin:EdgeInsets.fromLTRB(10.0,4.0,10.0,4.0),
                                    decoration: BoxDecoration(
                                        borderRadius:BorderRadius.circular(6),
                                        border:Border.all(color:Colors.purple[400])
                                    ),
                                    child:TextField(

                                      decoration:InputDecoration(
                                        border:InputBorder.none,
                                        labelText:'Password',
                                        fillColor:Colors.orange[400],
                                      ),
                                    ) ,
                                  ),
                                  Container(
                                      height:50.0,
                                      width:MediaQuery.of(context).size.width,
                                      margin:EdgeInsets.fromLTRB(10.0,15.0,10.0,6.0),
                                      child:RaisedButton(onPressed: () {},
                                      color:Colors.deepPurple,
                                      textColor:Colors.white,
                                      elevation:3.0,
                                        child: new Text('Sign In',
                                            style:TextStyle(
                                              color:Colors.white,
                                              fontWeight: FontWeight.bold
                                            )),
                                    )
                                  ),
                                  Container(
                                    margin:EdgeInsets.fromLTRB(10.0,15.0,10.0,6.0),
                                    child: Row(
                                     children: <Widget>[
                                       Expanded(
                                         child: Container(
                                           height:1.0,
                                           width:200.0,
                                           color:Colors.black,
                                         ),
                                       ),
                                       new Text(
                                           'OR',
                                           style:TextStyle(
                                               fontSize:17.0
                                           )
                                       ),
                                       Expanded(
                                         child: Container(
                                           height:1.0,
                                           width:200.0,
                                           color:Colors.black,
                                         ),
                                       )

                                     ],
                                    ),
                                  ),
                                  Container(
                                    height:50.0,
                                    width:MediaQuery.of(context).size.width,
                                    margin:EdgeInsets.fromLTRB(10.0,4.0,10.0,4.0) ,
                                    decoration: BoxDecoration(
                                        borderRadius:BorderRadius.circular(6),
                                        border:Border.all(color:Colors.purple[400])
                                    ),
                                    child:RaisedButton(onPressed: () {
                                      _pushSignUp();
                                    },
                                      textColor:Colors.white,
                                      elevation:3.0,
                                      child: new Text('New ? Create an Account',
                                          style:TextStyle(
                                              color:Colors.black,
                                              fontWeight: FontWeight.bold
                                          )),
                                    ) ,
                                  ),
                                ],
                              ) ,
                             ),
                           )
                    ],
                  ) ,
                ),
              ),
            ),
          )

      ),
    );

  }

  void _pushSignUp(){
    Navigator.of(context).push(
      new MaterialPageRoute(builder:(context){
      return SignUp();
      })
    );
  }


}