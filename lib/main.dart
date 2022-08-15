import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/loading.dart';
import 'pages/location.dart';


Future<void> main() async {
  runApp( MaterialApp(
    initialRoute: 'loading',
    routes: {
      'loading' : (context) => Loading(),
      'home': (context) => Home(),
      'location' : (context) => ChooseLocation(),


    },

  ));
}


