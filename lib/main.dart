import 'package:flutter/material.dart';
// import "pages/homePage.dart";
// import "pages/login_page.dart";
// import "pages/list_page.dart";
// import "pages/grid_page.dart";
import "pages/scroll_home_page.dart";

void main(List<String> args) {
  runApp(
    MaterialApp(
      title: 'app',
      // theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
      home: ScrollHomePage(),
    ),
  );
}
