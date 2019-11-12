import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home/home_screen.dart';
import 'package:flutter_app/screens/home/initial_guide_view.dart';
import 'package:flutter_app/utils/app_preference.dart';
import 'package:flutter_app/utils/app_localization.dart';
import 'package:flutter_app/routes.dart';

import 'dao/db_helper.dart';

//import 'package:eduplus_app/dao/db_helper.dart';
//import 'package:eduplus_app/dao/ep_location.dart';
//import 'package:eduplus_app/routes.dart';
//import 'package:eduplus_app/screens/commons/warning_screen.dart';
//import 'package:eduplus_app/screens/home/home_page_parent.dart';
//import 'package:eduplus_app/screens/home/home_page_teacher.dart';
//import 'package:eduplus_app/screens/login/username_login_screen.dart';
//import 'package:eduplus_app/utils/app_localization.dart';
//import 'package:eduplus_app/utils/app_preference.dart';
//import 'package:eduplus_app/utils/globals.dart' as globals;
//import 'package:flutter/material.dart';

Future main()
async {
  Widget defaultWidget;


  ///firstly opening database connection
  await DBHelper.dbhOpenDatabase();
  AppSharedPreference prefs = new AppSharedPreference();
//  String appLanguage = await prefs.getString(PreferenceKey.APP_LANGUAGE);

  ///Setting App language
//  AppLocalizations.setAppLanguage(appLanguage);
 bool value = await prefs.getBool(PreferenceKey.IS_USER_LOGGED_IN);
 print(value.toString());

//  if (value) {
//    int userId = await prefs.getInt(PreferenceKey.CURRENT_USER_ID);
//    globals.epUserId = userId;
//
//    bool isTrackingEnabled = await prefs.getBool(PreferenceKey.IS_TRACKING_ENABLED);
//    globals.isTrackingEnabled = isTrackingEnabled;
//
//    globals.isHasMultipleRoles = await prefs.getBool(PreferenceKey.HAS_MULTIPLE_ROLES);
//
//    String userRole = await prefs.getString(PreferenceKey.USER_ROLE);
//    globals.epRole = userRole;
//
//    if (userRole == 'PARENT') {
//      int selectedTrackableID = await prefs.getInt(PreferenceKey.SELECTED_TRACKABLE_ID);
//      globals.selectedTrackableId = selectedTrackableID;
//    }
//
//    int selectedLocation = await prefs.getInt(PreferenceKey.SELECTED_LOCATION_ID);
//    print("selected location = $selectedLocation");
//    globals.locationId = selectedLocation;
//    List<EPLocation> locationsList;
//
//    if (selectedLocation == null || selectedLocation == -1) {
//      print("resting location");
//      await EPLocation.listAllLocations().then((List<EPLocation> data) {
//        locationsList = data;
//        print("print data = $data");
//      }).catchError((e) {
//        locationsList = null;
//        print("errro fetching location");
//      });
//    }
//
//    defaultWidget = (userRole == 'PARENT') ? HomeTabParent() : HomeTabTeacher(locationsList, selectedLocation);
//  } else {

//  }

  if(value)
    {
      defaultWidget = new HomeScreen();
    }
  else
    {
      defaultWidget = new UserGuideView();
    }

  runApp(new MyApp(defaultWidget));
}



//=> runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        // This is the theme of your application.
//        //
//        // Try running your application with "flutter run". You'll see the
//        // application has a blue toolbar. Then, without quitting the app, try
//        // changing the primarySwatch below to Colors.green and then invoke
//        // "hot reload" (press "r" in the console where you ran "flutter run",
//        // or simply save your changes to "hot reload" in a Flutter IDE).
//        // Notice that the counter didn't reset back to zero; the application
//        // is not restarted.
//        primarySwatch: Colors.blue,
//      ),
//      home: MyHomePage(title: 'New beginning'),
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  // This widget is the home page of your application. It is stateful, meaning
//  // that it has a State object (defined below) that contains fields that affect
//  // how it looks.
//
//  // This class is the configuration for the state. It holds the values (in this
//  // case the title) provided by the parent (in this case the App widget) and
//  // used by the build method of the State. Fields in a Widget subclass are
//  // always marked "final".
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // This method is rerun every time setState is called, for instance as done
//    // by the _incrementCounter method above.
//    //
//    // The Flutter framework has been optimized to make rerunning build methods
//    // fast, so that you can just rebuild anything that needs updating rather
//    // than having to individually change instances of widgets.
//    return Scaffold(
//      appBar: AppBar(
//        // Here we take the value from the MyHomePage object that was created by
//        // the App.build method, and use it to set our appbar title.
//        title: Text(widget.title),
//      ),
//      body: Center(
//        // Center is a layout widget. It takes a single child and positions it
//        // in the middle of the parent.
//        child: Column(
//          // Column is also layout widget. It takes a list of children and
//          // arranges them vertically. By default, it sizes itself to fit its
//          // children horizontally, and tries to be as tall as its parent.
//          //
//          // Invoke "debug painting" (press "p" in the console, choose the
//          // "Toggle Debug Paint" action from the Flutter Inspector in Android
//          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//          // to see the wireframe for each widget.
//          //
//          // Column has various properties to control how it sizes itself and
//          // how it positions its children. Here we use mainAxisAlignment to
//          // center the children vertically; the main axis here is the vertical
//          // axis because Columns are vertical (the cross axis would be
//          // horizontal).
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'You have pushed the button this many times:',
//            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
//    );
//  }
//}
//

//
//void main() async {
//  Widget defaultWidget;
//

//  ///firstly opening database connection
//  await DBHelper.dbhOpenDatabase();
//  EduPlusSharedPreference prefs = new EduPlusSharedPreference();
//  String appLanguage = await prefs.getString(PreferenceKey.APP_LANGUAGE);
//
//  ///Setting App language
//  EduplusLocalizations.setAppLanguage(appLanguage);
//  bool value = await prefs.getBool(PreferenceKey.IS_USER_LOGGED_IN);
//
//  if (value) {
//    int userId = await prefs.getInt(PreferenceKey.CURRENT_USER_ID);
//    globals.epUserId = userId;
//
//    bool isTrackingEnabled = await prefs.getBool(PreferenceKey.IS_TRACKING_ENABLED);
//    globals.isTrackingEnabled = isTrackingEnabled;
//
//    globals.isHasMultipleRoles = await prefs.getBool(PreferenceKey.HAS_MULTIPLE_ROLES);
//
//    String userRole = await prefs.getString(PreferenceKey.USER_ROLE);
//    globals.epRole = userRole;
//
//    if (userRole == 'PARENT') {
//      int selectedTrackableID = await prefs.getInt(PreferenceKey.SELECTED_TRACKABLE_ID);
//      globals.selectedTrackableId = selectedTrackableID;
//    }
//
//    int selectedLocation = await prefs.getInt(PreferenceKey.SELECTED_LOCATION_ID);
//    print("selected location = $selectedLocation");
//    globals.locationId = selectedLocation;
//    List<EPLocation> locationsList;
//
//    if (selectedLocation == null || selectedLocation == -1) {
//      print("resting location");
//      await EPLocation.listAllLocations().then((List<EPLocation> data) {
//        locationsList = data;
//        print("print data = $data");
//      }).catchError((e) {
//        locationsList = null;
//        print("errro fetching location");
//      });
//    }
//
//    defaultWidget = (userRole == 'PARENT') ? HomeTabParent() : HomeTabTeacher(locationsList, selectedLocation);
//  } else {
//    defaultWidget = new UsernameLoginScreen();
//  }
//
//  runApp(new MyApp(defaultWidget));
//}
//
class MyApp extends StatelessWidget {
  final Widget defaultWidget;

  MyApp(this.defaultWidget); //// This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
      print("Error caught in the App $errorDetails");
      return getErrorWidget(context, errorDetails);
    };

    return new MaterialApp(
      title: 'EduPlus',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      home: defaultWidget,
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        //const TranslationsDelegate(),
        const AppLocalizationsDelegate(),
//        GlobalMaterialLocalizations.delegate,
//        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), //English
        const Locale('ja', 'JP'), //japenese
        const Locale('ml', 'ML'), //malayalam
        const Locale('ar', 'AR'), //Arabic
        // ... other locales the app supports
      ],
    );
  }

  Widget getErrorWidget(BuildContext context, FlutterErrorDetails error) {
    print("ERROR>FLUTTER > ${error?.exception ?? ""}");

    return Scaffold(
      body: Center(
        child:Text("jaba")

//        new WaringScreen(
//          message: "Something went wrong\nPlease Re-launch Application",
//          title: "",
//          iconData: Icons.home,
//          retry: true,
//          onPressed: () async {
//          },
//        ),
      ),
    );
  }

}
