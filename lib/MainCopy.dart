import 'package:freegas/tabs_package/profile.dart';
import 'package:freegas/tabs_package/buy.dart';
import 'package:freegas/tabs_package/order.dart';
import 'package:flutter/material.dart';
import 'package:freegas/tabs_package/home.dart';
import 'package:freegas/utils/theme.dart';


class MyHome extends StatefulWidget{

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {

  final tabs = [
    home(),
    buy(),
    order(),
    profile()
  ];

  var nameone, nametwo;
  bool _isScaffoldOne = true;
  bool _isScaffoldTwo = false;
  int _currentIndex = 0;

  void _changedVisibility(int _index) {
    setState(() {
      _currentIndex = _index;
      switch (_index) {
        case 0:
          _isScaffoldOne = true;
          _isScaffoldTwo = false;
          break;
        case 1:
          _isScaffoldOne = false;
          _isScaffoldTwo = true;
          break;
        case 2:
          _isScaffoldOne = false;
          _isScaffoldTwo = true;
          break;
        case 3:
          _isScaffoldOne = false;
          _isScaffoldTwo = true;
          break;
      }
    });
  }

  @override
  void initState() {
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:MyCustomTheme(),
      home:DefaultTabController(
        length: 2,
        child: Container(
         // color: Colors.red,
          child: Stack(
            children: <Widget>[
              Visibility(
                visible: _isScaffoldTwo,
                child: new Container(
                  child: Scaffold(
                      body: tabs[_currentIndex],
                      appBar: AppBar(
                        elevation:4.0,
                        backgroundColor: Colors.white,
                        title: Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: new Container(
                            color: Colors.white,
                            child: new Row(
                              children: <Widget>[
                                new SizedBox(width: 5.0),
                                new Text(
                                  '$nameone',
                                  style:TextStyle(
                                    fontSize:20.0,
                                    color:Colors.deepPurple[500]
                                  ),
                                ),
                                new SizedBox(width: 8.0),
                                new Text(
                                  '$nametwo',
                                    style:TextStyle(
                                        fontSize:25.0,
                                      color:Colors.green[700]
                                    ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      backgroundColor: Colors.white,
                      bottomNavigationBar: BottomNavigationBar(
                        currentIndex: _currentIndex,
                        unselectedLabelStyle:TextStyle(
                          color:Colors.purple,
                        ) ,
                        type: BottomNavigationBarType.shifting,
                        items: [
                          BottomNavigationBarItem(
                            icon: Icon(Icons.home, color: Colors.purple[800]),
                            title: Text('Home',
                              style: TextStyle(
                                  color: Colors.black45
                              ),),
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(
                                Icons.shopping_basket, color: Colors.purple[800]),
                            title: Text('shop',
                              style: TextStyle(
                                  color: Colors.black45
                              ),),
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(
                                Icons.account_balance, color: Colors.purple[800]),
                            title: Text('orders',
                              style: TextStyle(
                                  color: Colors.black45
                              ),),
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(Icons.person, color: Colors.purple[800]),
                            title: Text('profile',
                              style: TextStyle(
                                  color: Colors.black45
                              ),
                            ),
                          ),
                        ],
                        onTap: (index) {
                          setState(() {
                            _changedVisibility(index);
                            if (index == 0) {
                              _setToolbarName('Free', 'Gas247');
                            } else if (index == 1) {
                              _setToolbarName('Purchase', 'Cylinder');
                            } else if (index == 2) {
                              _setToolbarName('Your', 'Orders');
                            } else if (index == 3) {
                              _setToolbarName('Your', 'Profile');
                            }
                          });
                        },
                      )
                  ),
                ),
              ),
              Visibility(
                visible: _isScaffoldOne,
                child: Scaffold(
                    body: tabs[_currentIndex],
                    appBar: AppBar(
                      elevation:4.0,
                      backgroundColor: Colors.white,
                      title: Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: new Container(
                          color: Colors.white,
                          child: new Row(
                            children: <Widget>[
                              new SizedBox(width: 5.0),
                              new Text(
                                'Free',
                                style:TextStyle(
                                    fontSize:20.0,
                                    color:Colors.deepPurple[500]
                                ),
                              ),
                              new SizedBox(width: 8.0),
                              new Text(
                                'Gas247',
                                  style:TextStyle(
                                      fontSize:25.0,
                                      color:Colors.green[600]
                                  ),
                              )
                            ],
                          ),
                        ),
                      ),
                      bottom: TabBar(
                        isScrollable: false,
                        indicatorColor: Colors.purple[800],
                        indicatorWeight: 3.0,
                        tabs: <Widget>[
                          Tab(
                            icon: Column(
                              children: <Widget>[
                                new Icon(
                                  Icons.opacity,
                                  color: Colors.purple[800],
                                ),
                                new Text(
                                  'home',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Tab(
                            icon: Column(
                              children: <Widget>[
                                new Icon(
                                  Icons.notifications,
                                  color: Colors.purple[800],
                                ),
                                new Text(
                                  'notification',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    bottomNavigationBar: BottomNavigationBar(
                      currentIndex: _currentIndex,
                      type: BottomNavigationBarType.shifting,
                      items: [
                        BottomNavigationBarItem(
                          icon: Icon(Icons.home, color: Colors.purple[800]),
                          title: Text('Home',
                            style: TextStyle(
                                color: Colors.black45
                            ),),
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(
                              Icons.shopping_basket, color: Colors.purple[800]),
                          title: Text('shop',
                            style: TextStyle(
                                color: Colors.black45
                            ),),
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(
                              Icons.account_balance, color: Colors.purple[800]),
                          title: Text('orders',
                            style: TextStyle(
                                color: Colors.black45
                            ),),
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.person, color: Colors.purple[800]),
                          title: Text('profile',
                            style: TextStyle(
                                color: Colors.black45
                            ),
                          ),
                        ),
                      ]
                      ,
                      onTap: (index) {
                        setState(() {
                          _changedVisibility(index);
                          if (index == 0) {
                            _setToolbarName('Free', 'Gas247');
                          } else if (index == 1) {
                            _setToolbarName('Purchase', 'Cylinder');
                          } else if (index == 2) {
                            _setToolbarName('Your', 'Orders');
                          } else if (index == 3) {
                            _setToolbarName('Your', 'Profile');
                          }
                        });
                      },
                    )
                ),
              ),
            ],

          ),

        ),
      ),
    );
  }

  _setToolbarName(var name, var nametwo) {
    nameone = name;
    this.nametwo = nametwo;
  }

}