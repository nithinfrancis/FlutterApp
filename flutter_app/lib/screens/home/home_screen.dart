import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home/home_screen_menu.dart';
import 'package:flutter_app/utils/app_preference.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>with TickerProviderStateMixin  {
  AnimationController animationController;
  bool multiple = true;

  List<Menu> _menuList = new List();
  void initState() {
    animationController = AnimationController(
        duration: Duration(milliseconds: 2000), vsync: this);

    super.initState();
    _setInitialData();
  }

  void _setInitialData() async {
    AppSharedPreference prefs = new AppSharedPreference();
    await prefs.setBoolean(PreferenceKey.IS_USER_LOGGED_IN, true);
    try{
      List<Menu> menuitems = generateMenuList();
      if(null != menuitems && menuitems.isNotEmpty){
        _menuList.clear();
        _menuList.addAll(menuitems);
      }
    }catch(e){
      print("Exception in generate menu $e");
    }
  }
  Future<bool> getData() async {
    await Future.delayed(const Duration(milliseconds: 0));
    return true;
  }
  List<Menu> generateMenuList() {
    MenuList list = new MenuList();
    return list.generateList(MenuUserType.MenuUserTypeParent, true);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
//        width: width,
//        height: height -activitySectionTotalHeight-50,
        child: new GridView.count(
          padding: const EdgeInsets.only(top: 0.0),
          crossAxisCount: (MediaQuery.of(context).orientation == Orientation.portrait) ? 3 : 4,
          children: _menuList.map((Menu menu) {
            if(null != menu){
              return new MenuItem(
                menu: menu,
//                callback: this,
              );
            }
            return Container();
          }).toList(),
        ),
      )

    );
  }

  Widget appBar() {
    return SizedBox(
      height: AppBar().preferredSize.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 8, left: 8),
            child: Container(
              width: AppBar().preferredSize.height - 8,
              height: AppBar().preferredSize.height - 8,
            ),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  "Flutter UI",
                  style: new TextStyle(
                    fontSize: 22,
//                    color: AppTheme.darkText,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8, right: 8),
            child: Container(
              width: AppBar().preferredSize.height - 8,
              height: AppBar().preferredSize.height - 8,
              color: Colors.white,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius:
                  new BorderRadius.circular(AppBar().preferredSize.height),
                  child: Icon(
                    multiple ? Icons.dashboard : Icons.view_agenda,
//                    color: AppTheme.dark_grey,
                  ),
                  onTap: () {
                    setState(() {
                      multiple = !multiple;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
