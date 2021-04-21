import 'package:flutter/material.dart';

import 'Screens/splash.dart';

//import 'Screen1/screen1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This is the root widget of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Brr Softwares',
      /*
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.yellowAccent,
      ),

       */
      home: Splash(),

    );
  }
}