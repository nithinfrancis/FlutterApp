import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/detail/detail_screen.dart';
import 'package:flutter_app/screens/home/home_screen_menu.dart';
import 'package:flutter_app/utils/app_preference.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>with TickerProviderStateMixin  {

  List<Menu> _menuList = new List();
  void initState() {
    super.initState();
    _setInitialData();
  }

  void _setInitialData() async {
    AppSharedPreference prefs = new AppSharedPreference();
    await prefs.setBoolean(PreferenceKey.IS_USER_LOGGED_IN, true);
  }
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        color: Color.fromRGBO(244, 244, 244, 1.0),
        margin:EdgeInsets.only(top: 200.0,left: 10.0,right: 10.0),
        child: ListView(

          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: ()
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen()));
                  },
                  child: Card(
                    margin:  EdgeInsets.all(5.0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: const BorderRadius.only(
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0),
                        bottomLeft: const Radius.circular(10.0),
                        bottomRight: const Radius.circular(10.0),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      height: 100.0,
                      width: 145.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          )
                      ),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 2.0,left: 5.0),
                                child: Icon(
                                  Icons.account_balance,
                                  color: Colors.blue,
                                  size: 50,
                                ),
                              ),
                              Text("HCF/LCF")
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            margin: EdgeInsets.all(5.0),

                            height: 5.0,
                            width: 135.0,
                            decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                )
                            ),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      )
                                  ),
                                  width: 50.0,
                                ),
                              ],
                            ),
                          ),

                          Container(
                              margin: EdgeInsets.only(left: 100.0),child: Text("45%")),

                        ],
                      ) ,
                    ),
                  ),
                ),
                InkWell(
                  onTap: ()
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen()));
                  },
                  child: Card(
                    margin:  EdgeInsets.all(5.0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: const BorderRadius.only(
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0),
                        bottomLeft: const Radius.circular(10.0),
                        bottomRight: const Radius.circular(10.0),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      height: 100.0,
                      width: 145.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          )
                      ),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 2.0,left: 5.0),
                                child: Icon(
                                  Icons.account_balance,
                                  color: Colors.blue,
                                  size: 50,
                                ),
                              ),
                              Text("HCF/LCF")
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            margin: EdgeInsets.all(5.0),

                            height: 5.0,
                            width: 135.0,
                            decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                )
                            ),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      )
                                  ),
                                  width: 50.0,
                                ),
                              ],
                            ),
                          ),

                          Container(
                              margin: EdgeInsets.only(left: 100.0),child: Text("45%")),

                        ],
                      ) ,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: ()
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen()));
                  },
                  child: Card(
                    margin:  EdgeInsets.all(5.0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: const BorderRadius.only(
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0),
                        bottomLeft: const Radius.circular(10.0),
                        bottomRight: const Radius.circular(10.0),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      height: 100.0,
                      width: 145.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          )
                      ),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 2.0,left: 5.0),
                                child: Icon(
                                  Icons.account_balance,
                                  color: Colors.blue,
                                  size: 50,
                                ),
                              ),
                              Text("HCF/LCF")
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            margin: EdgeInsets.all(5.0),

                            height: 5.0,
                            width: 135.0,
                            decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                )
                            ),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      )
                                  ),
                                  width: 50.0,
                                ),
                              ],
                            ),
                          ),

                          Container(
                              margin: EdgeInsets.only(left: 100.0),child: Text("45%")),

                        ],
                      ) ,
                    ),
                  ),
                ),
                InkWell(
                  onTap: ()
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen()));
                  },
                  child: Card(
                    margin:  EdgeInsets.all(5.0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: const BorderRadius.only(
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0),
                        bottomLeft: const Radius.circular(10.0),
                        bottomRight: const Radius.circular(10.0),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      height: 100.0,
                      width: 145.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          )
                      ),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 2.0,left: 5.0),
                                child: Icon(
                                  Icons.account_balance,
                                  color: Colors.blue,
                                  size: 50,
                                ),
                              ),
                              Text("HCF/LCF")
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            margin: EdgeInsets.all(5.0),

                            height: 5.0,
                            width: 135.0,
                            decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                )
                            ),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      )
                                  ),
                                  width: 50.0,
                                ),
                              ],
                            ),
                          ),

                          Container(
                              margin: EdgeInsets.only(left: 100.0),child: Text("45%")),

                        ],
                      ) ,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: ()
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen()));
                  },
                  child: Card(
                    margin:  EdgeInsets.all(5.0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: const BorderRadius.only(
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0),
                        bottomLeft: const Radius.circular(10.0),
                        bottomRight: const Radius.circular(10.0),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      height: 100.0,
                      width: 145.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          )
                      ),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 2.0,left: 5.0),
                                child: Icon(
                                  Icons.account_balance,
                                  color: Colors.blue,
                                  size: 50,
                                ),
                              ),
                              Text("HCF/LCF")
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            margin: EdgeInsets.all(5.0),

                            height: 5.0,
                            width: 135.0,
                            decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                )
                            ),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      )
                                  ),
                                  width: 50.0,
                                ),
                              ],
                            ),
                          ),

                          Container(
                              margin: EdgeInsets.only(left: 100.0),child: Text("45%")),

                        ],
                      ) ,
                    ),
                  ),
                ),
                InkWell(
                  onTap: ()
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen()));
                  },
                  child: Card(
                    margin:  EdgeInsets.all(5.0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: const BorderRadius.only(
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0),
                        bottomLeft: const Radius.circular(10.0),
                        bottomRight: const Radius.circular(10.0),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      height: 100.0,
                      width: 145.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          )
                      ),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 2.0,left: 5.0),
                                child: Icon(
                                  Icons.account_balance,
                                  color: Colors.blue,
                                  size: 50,
                                ),
                              ),
                              Text("HCF/LCF")
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            margin: EdgeInsets.all(5.0),

                            height: 5.0,
                            width: 135.0,
                            decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                )
                            ),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      )
                                  ),
                                  width: 50.0,
                                ),
                              ],
                            ),
                          ),

                          Container(
                              margin: EdgeInsets.only(left: 100.0),child: Text("45%")),

                        ],
                      ) ,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: ()
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen()));
                  },
                  child: Card(
                    margin:  EdgeInsets.all(5.0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: const BorderRadius.only(
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0),
                        bottomLeft: const Radius.circular(10.0),
                        bottomRight: const Radius.circular(10.0),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      height: 100.0,
                      width: 145.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          )
                      ),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 2.0,left: 5.0),
                                child: Icon(
                                  Icons.account_balance,
                                  color: Colors.blue,
                                  size: 50,
                                ),
                              ),
                              Text("HCF/LCF")
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            margin: EdgeInsets.all(5.0),

                            height: 5.0,
                            width: 135.0,
                            decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                )
                            ),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      )
                                  ),
                                  width: 50.0,
                                ),
                              ],
                            ),
                          ),

                          Container(
                              margin: EdgeInsets.only(left: 100.0),child: Text("45%")),

                        ],
                      ) ,
                    ),
                  ),
                ),
                InkWell(
                  onTap: ()
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen()));
                  },
                  child: Card(
                    margin:  EdgeInsets.all(5.0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: const BorderRadius.only(
                        topLeft: const Radius.circular(10.0),
                        topRight: const Radius.circular(10.0),
                        bottomLeft: const Radius.circular(10.0),
                        bottomRight: const Radius.circular(10.0),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      height: 100.0,
                      width: 145.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          )
                      ),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 2.0,left: 5.0),
                                child: Icon(
                                  Icons.account_balance,
                                  color: Colors.blue,
                                  size: 50,
                                ),
                              ),
                              Text("HCF/LCF")
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            margin: EdgeInsets.all(5.0),

                            height: 5.0,
                            width: 135.0,
                            decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                )
                            ),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      )
                                  ),
                                  width: 50.0,
                                ),
                              ],
                            ),
                          ),

                          Container(
                              margin: EdgeInsets.only(left: 100.0),child: Text("45%",style: TextStyle(),)),

                        ],
                      ) ,
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      )

    );
  }
}
