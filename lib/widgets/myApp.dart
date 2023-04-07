import 'package:flutter/material.dart';
import 'package:navigator/widgets/screen.dart';
import '../pages/homePage.dart';
import '../pages/itemPage.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(text: 'Shop'),
    );
  }
}