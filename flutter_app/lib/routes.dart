import 'package:flutter_app/screens/detail/detail_screen.dart';
import 'package:flutter_app/screens/home/initial_guide_view.dart';
import 'package:flutter_app/screens/home/home_screen.dart';
import 'package:flutter_app/screens/question/question_screen.dart';

final routes = {
  '/guide': (BuildContext) => new UserGuideView(),
  '/homePage': (BuildContext) => new HomeScreen(),
    '/detail':(BuildContext) => new DetailScreen(),
  '/detail':(BuildContext) => new QuestionScreen(),

};
