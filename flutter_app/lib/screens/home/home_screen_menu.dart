import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home/initial_guide_view.dart';

const dashBoard = "dashboard";
const diary = "diary";
const homework = "homework";
const monitoring = "monitoring";
const leaves = "leaves";
const activity = "activity";
const activityReport = "activityReport";
const alerts = "alerts";
const circulars = "circulars";
const timetable = "timetable";
const files = "files";
const messages = "messages";
const timeline = "timeline";
const students = "students";
const attendance = "attendance";
const payment="Fee payment";
const result="Result";
const smartCalendar ="SmartCalendar";

enum MenuUserType { MenuUserTypeParent, MenuUserTypeTeacher, MenuUserTypeAll }

class Menu {
    Menu({this.index, this.unreadCount, this.keyId, this.type, this.caption, this.imageName, this.route, this.requiresTracking,});

    int index;
    int unreadCount;
    String keyId;
    MenuUserType type;
    String caption;
    String imageName;
    var route;
    bool requiresTracking;
}

class MenuCaptionText extends StatelessWidget {
    const MenuCaptionText(this.text);

    final String text;

    @override
    Widget build(BuildContext context) {
        return new FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.bottomCenter,
            child: new Text(
                text,
                style: new TextStyle(
                    fontSize: 14.0,
                    color: Colors.black54,
                ),
            ),
        );
    }
}

class MenuUnreadText extends StatelessWidget {
    const MenuUnreadText(this.count);

    final int count;
    final unreadSize = const Size(24.0, 24.0);
    final int maxUnreadCountAllowed = 9;

    @override
    Widget build(BuildContext context) {
        return new Container(
            width: unreadSize.width,
            height: unreadSize.height,
            decoration: new BoxDecoration(color: Colors.red, borderRadius: new BorderRadius.all(Radius.circular(unreadSize.width / 2))),
            child: new Center(
                child: new Text(
                    count <= maxUnreadCountAllowed ? "$count" : "$maxUnreadCountAllowed+",
                    style: new TextStyle(color: Colors.white, fontSize: 13.0),
                ),
            ),
        );
    }
}

class MenuHorizontalDivider extends StatelessWidget {
    const MenuHorizontalDivider(this.tag, this.gridsPerRow);

    final int tag;
    final int gridsPerRow;

    @override
    Widget build(BuildContext context) {
        return new Positioned(
            bottom: 0.0,
            left: (tag % gridsPerRow) == 0 ? 0.0 : 4.0,
            right: (tag % gridsPerRow) == (gridsPerRow - 1) ? 0.0 : 5.0,
            child: new Container(
                color: Colors.black12,
                height: 1.0,
                width: MediaQuery.of(context).size.width / 3,
                child: new Padding(
                    padding: new EdgeInsets.only(left: 2.0, right: 2.0),
                    child: new SizedBox(width: 0.0, height: 0.0),
                ),
            ));
    }
}

class MenuVerticalDivider extends StatelessWidget {
    const MenuVerticalDivider(this.tag, this.gridsPerRow);

    final int tag;
    final int gridsPerRow;

    @override
    Widget build(BuildContext context) {
        return (tag % gridsPerRow) != gridsPerRow - 1
            ? new Positioned(
            right: 0.0,
            top: 4.0,
            bottom: 4.0,
            child: new Container(
                width: 1.0,
                height: MediaQuery.of(context).size.width / 3,
                color: Colors.black12,
                child: new Padding(padding: new EdgeInsets.only(top: 2.0, bottom: 2.0), child: new SizedBox(width: 0.0, height: 0.0)),
            ))
            : new SizedBox(width: 0.0, height: 0.0);
    }
}

class MenuItem extends StatelessWidget {
    MenuItem({Key key, this.menu, this.callback})
        : assert(menu != null || callback != null),
            super(key: key);

    final Menu menu;
    final MenuItemClickCallback callback;

    @override
    Widget build(BuildContext context) {
        Orientation orientation = MediaQuery.of(context).orientation;
        int gridsPerRow = (orientation == Orientation.portrait) ? 3 : 4;

        return new GridTile(
            child: new InkWell(
                onTap: () {
                    showDetails(menu);
                },
                child: new Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height/5,
                    margin: EdgeInsets.all(2.0),
                    child: new Stack(
                        children: <Widget>[
                            new Center(
                                child: new Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                        new Stack(
                                            children: <Widget>[
                                                new Image.asset(
                                                    menu.imageName,
                                                    fit: BoxFit.cover,
                                                ),
                                                menu.unreadCount > 0
                                                    ? new Positioned(
                                                    right: 0.0,
                                                    top: 0.0,
                                                    child: new MenuUnreadText(
                                                        menu.unreadCount,
                                                    ))
                                                    : new SizedBox(width: 0.0, height: 0.0)
                                            ],
                                        ),
                                        new Padding(padding: new EdgeInsets.only(top: 7.0,bottom: 7.0), child: new MenuCaptionText(menu.caption)),
                                    ],
                                ),
                            ),
                            new MenuHorizontalDivider(menu.index, gridsPerRow),
                            new MenuVerticalDivider(menu.index, gridsPerRow)
                        ],
                    ),
                )),
        );
    }

    showDetails(Menu menu) {
        callback.onMenuItemClick(menu);
    }
}

class MenuList {
    List<Menu> menuItems = <Menu>[
        new Menu(

            keyId: diary,
            requiresTracking: false,
            type: MenuUserType.MenuUserTypeParent,
            imageName: 'assets/images/eaten.png',

            caption:"d",
//            EduplusLocalizations.localizedValues[EduplusLocalizations.eduplusAppLocale]['diary'],
            route: new UserGuideView()),
        new Menu(
            keyId: diary,
            requiresTracking: false,
            type: MenuUserType.MenuUserTypeTeacher,
            imageName: 'assets/images/eaten.png',
            caption:"d",
//            caption: EduplusLocalizations.localizedValues[EduplusLocalizations.eduplusAppLocale]['diary'],
            route: new UserGuideView()),
        new Menu(
            keyId: homework,
            requiresTracking: false,
            type: MenuUserType.MenuUserTypeAll,
            imageName: 'assets/images/eaten.png',
            caption:"d",
//            caption: EduplusLocalizations.localizedValues[EduplusLocalizations.eduplusAppLocale]['homework'],
            route: new UserGuideView()),
//            route: globals.epRole == "TEACHER" ? HomeworkListTeacher() : HomeworkListParent()),

    ];

    List<Menu> generateList(MenuUserType type, bool isTrackingEnabled) {
        List items = List<Menu>();
        for (int i = 0; i < menuItems.length; i++) {
            Menu menu = menuItems[i];
            bool shouldAdd = false;
            if (menu.type == type || menu.type == MenuUserType.MenuUserTypeAll) {
                if (menu.requiresTracking == true) {
                    if (isTrackingEnabled == true) {
                        shouldAdd = true;
                    }
                } else {
                    shouldAdd = true;
                    if (isTrackingEnabled == true) {
                        if (menu.keyId == attendance) {
                            shouldAdd = false;
                        }
                    }
                }
            }
            if (shouldAdd) {
                menu.index = items.length;
                menu.unreadCount = 0;
                items.add(menu);
            }
        }
        return items;
    }
}

abstract class MenuItemClickCallback {
    void onMenuItemClick(Menu menu);
}
