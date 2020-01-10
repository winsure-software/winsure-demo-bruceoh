import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:winsure_demo/src/screens/bottom_navigation_tab/bottom_navigation_tab_screen.dart';
import 'package:winsure_demo/src/screens/home/home_screen.dart';
import 'package:winsure_demo/src/screens/management_tutorial/management_tutorial_first.dart';
import 'package:winsure_demo/src/screens/management_tutorial/management_tutorial_second.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //위젯 갤러리
      case '/home':
        return CupertinoPageRoute(
          builder: (_) => HomeScreen(),
          settings: settings,
        );
      case '/management_tutorial_first':
        return CupertinoPageRoute(
          builder: (_) => ManagementTutorialFirst(),
          settings: settings,
        );
      case '/management_tutorial_second':
        return CupertinoPageRoute(
          builder: (_) => ManagementTutorialSecond(),
          settings: settings,
        );
      case '/':
        return CupertinoPageRoute(
          builder: (_) => BottomNavigationTabScreen(),
          settings: settings,
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
          appBar: AppBar(
            title: Text('ErrorPage'),
          ),
          body: Center(
            child: Text("ERROR"),
          ));
    });
  }
}
