import 'package:flutter/material.dart';
import "pages/homePage.dart";

void main(List<String> args) {
  runApp(
    MaterialApp(
      title: 'app',
      // theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
      home: HomePage(key: ValueKey('Home')),
    ),
  );
}
