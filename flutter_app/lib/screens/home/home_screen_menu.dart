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
const payment = "Fee payment";
const result = "Result";
const smartCalendar = "SmartCalendar";



class Menu {
  Menu(
      {this.index,
      this.keyId,
      this.caption="default",
      this.imageName,
      this.percentage=45,
      this.route});

  int index;
  String keyId;
  String caption;
  String imageName;
  int percentage;
  var route;
}

//class MenuCaptionText extends StatelessWidget {
//  const MenuCaptionText(this.text);
//
//  final String text;
//
//  @override
//  Widget build(BuildContext context) {
//    return new FittedBox(
//      fit: BoxFit.scaleDown,
//      alignment: Alignment.bottomCenter,
//      child: new Text(
//        text,
//        style: new TextStyle(
//          fontSize: 14.0,
//          color: Colors.black54,
//        ),
//      ),
//    );
//  }
//}

class MenuItem extends StatelessWidget {
    MenuItem({Key key, this.menu, this.callback})
        : assert(menu != null || callback != null),
            super(key: key);

    final Menu menu;
    final MenuItemClickCallback callback;

    @override
    Widget build(BuildContext context) {

//        Orientation orientation = MediaQuery.of(context).orientation;
//        int gridsPerRow = (orientation == Orientation.portrait) ? 3 : 4;

        return new GridTile(
            child: new InkWell(
                onTap: () {
                    showDetails(menu);
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
                                        Text(menu.caption)
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
                                    margin: EdgeInsets.only(left: 100.0),child: Text(menu.percentage.toString())),

                            ],
                        ) ,
                    ),
                ),

//                new Container(
//                    color: Colors.white,
//                    height: MediaQuery.of(context).size.height/5,
//                    margin: EdgeInsets.all(2.0),
//                    child: new Stack(
//                        children: <Widget>[
//                            new Center(
//                                child: new Column(
//                                    mainAxisAlignment: MainAxisAlignment.center,
//                                    crossAxisAlignment: CrossAxisAlignment.center,
//                                    children: <Widget>[
//                                        new Stack(
//                                            children: <Widget>[
//                                                new Image.asset(
//                                                    menu.imageName,
//                                                    fit: BoxFit.cover,
//                                                ),
//
////                                                menu.unreadCount > 0
////                                                    ? new Positioned(
////                                                    right: 0.0,
////                                                    top: 0.0,
////                                                    child:
////                                                    new MenuUnreadText(
////                                                        menu.unreadCount,
////                                                    ))
////                                                    : new SizedBox(width: 0.0, height: 0.0)
//                                            ],
//                                        ),
//                                        new Padding(padding: new EdgeInsets.only(top: 7.0,bottom: 7.0), child: new MenuCaptionText(menu.caption)),
//                                    ],
//                                ),
//                            ),
//
//                        ],
//                    ),
//                )
            ),
        );
    }

    showDetails(Menu menu) {
        callback.onMenuItemClick(menu);
    }
}

class MenuList {
  List<Menu> menuItems = <Menu>[
    Menu(
        keyId: diary,
        imageName: 'assets/images/eaten.png',
        caption: "d",
        route: new UserGuideView()),
    Menu(
        keyId: diary,
        imageName: 'assets/images/eaten.png',
        caption: "d",
        route: new UserGuideView()),
  ];

  List<Menu> generateList() {
    List items = List<Menu>();
    for (int i = 0; i < menuItems.length; i++) {
      Menu menu = menuItems[i];
      items.add(menu);
    }
    return items;
  }
}

abstract class MenuItemClickCallback {
  void onMenuItemClick(Menu menu);
}
