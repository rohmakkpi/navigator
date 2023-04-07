import 'package:flutter/material.dart';
import 'package:navigator/pages/homePage.dart';
import 'package:navigator/pages/itemPage.dart';
import 'package:navigator/widgets/myApp.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context)=> HomePage(),
      '/item': (context) => ItemPage(),
    }
  ));
}


