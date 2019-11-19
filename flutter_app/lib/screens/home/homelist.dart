//import 'package:best_flutter_ui_templates/designCourse/homeDesignCourse.dart';
//import 'package:best_flutter_ui_templates/fitnessApp/fitnessAppHomeScreen.dart';
//import 'package:best_flutter_ui_templates/hotelBooking/hotelHomeScreen.dart';
import 'package:flutter/widgets.dart';

class HomeList {
    Widget navigateScreen;
    String imagePath;

    HomeList({
        this.navigateScreen,
        this.imagePath = '',
    });

    static List<HomeList> homeList = [
        HomeList(
            imagePath: "assets/images/dinner.png",
            navigateScreen:null
//            HotelHomeScreen()
            ,
        ),
        HomeList(
            imagePath: "assets/images/dinner.png",
    navigateScreen:null,
    ),
        HomeList(
            imagePath: "assets/images/dinner.png",
            navigateScreen:null,
        ),
    ];
}
