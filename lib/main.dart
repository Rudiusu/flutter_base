import 'package:flutter/material.dart';
// import "pages/homePage.dart";
import "pages/login_page.dart";
// import "pages/list_page.dart";
// import "pages/grid_page.dart";
import "pages/scroll_home_page.dart";
import 'pages/good_detail.dart';
import 'pages/not_found.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      title: 'app',
      initialRoute: '/home',
      routes: {
        // '/login': (context) => LoginPage(),
        '/home': (context) => ScrollHomePage(),
        // '/goodDetail': (context) => GoodDetail(),
      },
      onGenerateRoute: (settings) {
        bool isLogin = true;
        if (settings.name == '/goodDetail') {
          if (isLogin) {
            return MaterialPageRoute(builder: (context) => GoodDetail());
          } else {
            return MaterialPageRoute(builder: (context) => LoginPage());
          }
        }
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => NotFoundPage());
      },
      // theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
      // home: ScrollHomePage(),
    ),
  );
}
