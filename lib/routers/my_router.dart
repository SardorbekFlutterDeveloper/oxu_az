
import 'package:flutter/material.dart';

import 'package:oxu_az/views/home_page.dart';
import 'package:oxu_az/views/Home/second_home.dart';

class Router {
  static final Router _instance = Router._init();
  static Router get instance => _instance;
  Router._init();

  Route? onGenerateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case "/home":
        return simpleRoute(
          MyHomePge(),
        );

      case "second":
        return simpleRoute(
          SecondPage(),
        );
     
    }
  }

  simpleRoute(Widget routes) {
    return MaterialPageRoute(builder: (context) => routes);
  }
}
