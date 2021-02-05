import 'package:flutter/material.dart';
import 'package:restaurant/Screens/Cart_Screen.dart';
import 'package:restaurant/Rating.dart';
import 'package:restaurant/Horizontal.dart';
import 'package:restaurant/Screens/Cuisine_Dishes.dart';

import 'Screens/Home_Screen.dart';

void main() {
  // SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Home() ;
  }
}

