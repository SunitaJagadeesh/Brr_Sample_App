import 'package:brr_sample_app/Screens/home.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:brr_sample_app/Reused/colors.dart';
import 'package:brr_sample_app/Screens/login.dart';

import 'bottom_navigation_bar.dart';
import 'signup.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: Bottom(),
      backgroundColor: LightColor,
      //imageBackground: ,

      title: new Text('Brr Softwares',style: TextStyle(fontSize: 30,color: DarkColor)),
      image: new Image.asset('assets/logoTransparent_New.png'),
      //loadingText: Text('Brr '),
      photoSize: 150.0,
      loaderColor: DarkColor,
    );
  }
}
