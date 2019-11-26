import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/question/question_screen.dart';

class DetailScreen extends StatefulWidget {
    @override
    _DetailState createState() => new _DetailState();
}

class _DetailState extends State<DetailScreen>
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
            appBar: appBar,
            body:
            SafeArea(
                top: false,
                bottom: false,
                child: new Container(

                    child:ListView(
                        children: <Widget>[
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[


                                    InkWell(
                                        onTap: ()
                                        {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => QuestionScreen()));

                                        },
                                      child: Container(
                                          margin: EdgeInsets.all(10),
                                          height: 40.0,
                                          width: 40.0,
                                          color: Colors.lightBlueAccent,
                                          child: Center(child: Text("1")),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),

                                ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),

                                ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),

                                ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),

                                ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),

                                ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),

                                ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),

                                ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),

                                ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),

                                ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),

                                ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),

                                ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),

                                ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),

                                ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),

                                ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),

                                ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),

                                ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),

                                ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),

                                ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),

                                ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 40.0,
                                        width: 40.0,
                                        color: Colors.lightBlueAccent,
                                        child: Center(child: Text("1")),
                                    ),

                                ],
                            ),

                        ],
                    ),

        ))  );
    }







}
