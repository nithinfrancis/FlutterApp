import 'package:flutter_app/utils/constants.dart';
import 'package:flutter_app/routes.dart';
import 'package:flutter_app/screens/home/home_screen.dart';
import 'package:flutter_app/utils/globals.dart' as globals;
import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

class UserGuideView extends StatefulWidget {
//    final Widget homepage;
//
//    const UserGuideView(this.homepage);

    @override
    State<StatefulWidget> createState() => new _UserGuideViewState();
}

class _UserGuideViewState extends State<UserGuideView> {
    @override
    Widget build(BuildContext context) {
        IntroViews _introview = new IntroViews();
        var pages = _introview.pages;
        return new Scaffold(
            body: new Builder(
                builder: (context) => new IntroViewsFlutter(
                    pages,
                    onTapDoneButton: () {
                        Navigator.pushReplacement(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                            ), //MaterialPageRoute
                        );
                    },
                    showSkipButton: true, //Whether you want to show the skip button or not.
                    pageButtonTextStyles: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                    ),
                ), //IntroViewsFlutter
            ),
        );
    }
}
