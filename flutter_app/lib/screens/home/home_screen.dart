import 'package:flutter/material.dart';
import 'package:flutter_app/utils/app_preference.dart';
import 'package:flutter_app/utils/constants.dart';
import 'package:flutter_app/utils/globals.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

class HomeScreen extends StatefulWidget {
//    final Widget homepage;

//    const UserGuideView(this.homepage);

  @override
  State<StatefulWidget> createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void initState() {
    super.initState();
    _setInitialData();
  }

  void _setInitialData() async {
    AppSharedPreference prefs = new AppSharedPreference();
    await prefs.setBoolean(PreferenceKey.IS_USER_LOGGED_IN, true);
  }

  @override
  Widget build(BuildContext context) {
//        IntroViews _introview = new IntroViews();
//        var pages = _introview.pages;
    return new Scaffold(
      body: Center(
        child: Text("Menu PAge"),
      ),
//            new Builder(
//                builder: (context) =>
//                new IntroViewsFlutter(
//                    pages,
//                    onTapDoneButton: () {
//                        Navigator.pushReplacement(
//                            context,
//                            new MaterialPageRoute(
//                                builder: (context) => widget.homepage,
//                            ), //MaterialPageRoute
//                        );
//                    },
//                    showSkipButton: true, //Whether you want to show the skip button or not.
//                    pageButtonTextStyles: TextStyle(
//                        color: Colors.white,
//                        fontSize: 18.0,
//                    ),
//                ), //IntroViewsFlutter
//            ),
    );
  }
}
