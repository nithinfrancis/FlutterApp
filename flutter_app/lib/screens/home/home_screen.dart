import 'package:flutter/material.dart';
import 'package:flutter_app/utils/app_preference.dart';

class HomeScreen extends StatefulWidget {
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
    return new Scaffold(
      body: Center(
        child: Text("Menu PAge"),
      ),
    );
  }
}
