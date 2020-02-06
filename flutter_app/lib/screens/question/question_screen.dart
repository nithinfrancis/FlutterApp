import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  @override
  _QuestionState createState() => new _QuestionState();
}

class _QuestionState extends State<QuestionScreen>
{
  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      elevation: 0.0,
      centerTitle: true,
//            flexibleSpace: new Image.asset(
//                'assets/images/home_background_topsection_top.png',
//                fit: BoxFit.fill,
//                width: MediaQuery.of(context).size.width,
//            ),
      title: new Text("detail"),
    );
    return new Scaffold(
//            key: _scaffoldKey,
//        appBar: appBar,
        body:
        SafeArea(
            top: false,
            bottom: false,
            child: new Container(

            color:Colors.grey ,
              child: Center(
                child: Card(
                  margin: EdgeInsets.fromLTRB(10.0,50.0, 10.0,50.0),
                  child:Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[

                        Text("Question"),
                        Text("any data")
                      ],),
                      Container(
                        height: 400.0,
                        width: 200.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),

            ))  );
  }







}
