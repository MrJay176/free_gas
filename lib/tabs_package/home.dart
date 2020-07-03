import 'package:flutter/material.dart';
import 'package:freegas/items/slide_item.dart';
import 'package:freegas/models/Slide.dart';
import 'dart:async';
import 'package:freegas/utils/theme.dart';
import 'package:freegas/items/first_gas.dart';
import 'package:freegas/items/slide_dot.dart';
import 'package:freegas/items/second_option.dart';

class home extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _home();
  }

}

class _home extends State<home>{

  int _currentPage =0;
  final PageController _pageController = PageController(
    initialPage:0
  );

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 2 ),(timer){
      if(_currentPage<3){
        _currentPage++;
      }else{
        _currentPage = 0;
      }
      _pageController.animateToPage(_currentPage, duration: Duration(microseconds: 300), curve:Curves.easeIn);
    });
  }

   _onPageChanged(int index){
    setState(() {
      _currentPage = index;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme:MyCustomTheme(),
      home: Container(
        child: Scaffold(
          body:TabBarView(
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    new Container(
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: <Widget>[
                          Container(
                              height: 230.0,
                              child :PageView.builder(
                                  itemCount: slideList.length,
                                  itemBuilder: (context,i)=>SlideItem(i),
                                  controller:_pageController,
                                  onPageChanged: _onPageChanged,
                                  scrollDirection:Axis.horizontal
                              )
                          ),
                          Positioned(
                              bottom:0,
                              child:Stack(
                                alignment:AlignmentDirectional.topStart,
                                children: <Widget>[
                                  Container(
                                    margin: const EdgeInsets.only(bottom:35),
                                    child: Row(
                                      children: <Widget>[
                                        for(int i = 0 ; i<slideList.length;i++)
                                          if(i==_currentPage)
                                            SlideDots(true)
                                          else
                                            SlideDots(false)
                                      ],
                                    ),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                    FirstGas(),
                    StateGas(),
                  ],
                ),
              ),
              new Container(
                child:Padding(
                  padding:EdgeInsets.fromLTRB(7.0,7.0,7.0,0.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child:Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                    'Announcement',
                                    style:TextStyle(
                                        color:Colors.orange,
                                        fontSize:17.0
                                    )
                                ),
                                SizedBox(width:20.0),
                                Icon(
                                  Icons.star,
                                  color:Colors.deepPurple,
                                )
                              ],
                            ),
                            Text(
                            'This announcement is for all app users , to let you all know thre would be a give away for this Christmas Season.',
                            style:TextStyle(
                              color:Colors.black,
                              fontSize:17.0
                            )
                            )
                          ],
                        )
                      ),
                      SizedBox(height:20.0),
                      Container(
                          child:Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                      'Announcement',
                                      style:TextStyle(
                                          color:Colors.orange,
                                          fontSize:17.0
                                      )
                                  ),
                                  SizedBox(width:20.0),
                                  Icon(
                                    Icons.star,
                                    color:Colors.deepPurple,
                                  )
                                ],
                              ),
                            Text(
                            'This announcement is for all app users , to let you all know thre would be a Free Gas Give Away on birthdays of our app users.',
                            style:TextStyle(
                                color:Colors.black,
                                fontSize:17.0
                            )
                            )
                            ],
                          )
                      ),
                      SizedBox(height:20.0),
                      Container(
                          child:Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                      'Announcement',
                                      style:TextStyle(
                                          color:Colors.orange,
                                          fontSize:17.0
                                      )
                                  ),
                                  SizedBox(width:20.0),
                                  Icon(
                                    Icons.star,
                                    color:Colors.deepPurple,
                                  )
                                ],
                              ),
                              Text(
                                  'Happy new Month everyone , Thank you for patronising our platform',
                                  style:TextStyle(
                                      color:Colors.black,
                                      fontSize:17.0
                                  )
                              )

                            ],
                          )
                      ),
                      SizedBox(height:20.0),
                      Container(
                          child:Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Announcement',
                                    style:TextStyle(
                                      color:Colors.orange,
                                      fontSize:17.0
                                    )
                                  ),
                                  SizedBox(width:20.0),
                                  Icon(
                                    Icons.star,
                                    color:Colors.deepPurple,
                                  )
                                ],
                              ),
                              Text(
                                  'Please any problem encountered in any our our services kindly email us .Thnak you',
                                  style:TextStyle(
                                      color:Colors.black,
                                      fontSize:17.0
                                  )
                              )
                            ],
                          )
                      ),

                    ],
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }


}