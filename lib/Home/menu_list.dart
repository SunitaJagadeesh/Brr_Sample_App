import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:brr_sample_app/Reused/menu_icons.dart';
import 'package:brr_sample_app/Reused/social_icons.dart';
import 'package:brr_sample_app/Screens/Menu/about.dart';
import 'package:brr_sample_app/Screens/Menu/careers.dart';
import 'package:brr_sample_app/Screens/Menu/contact.dart';
import 'package:brr_sample_app/Screens/Menu/covid.dart';
import 'package:brr_sample_app/Screens/Menu/services.dart';
import 'package:brr_sample_app/Screens/home.dart';
import 'package:brr_sample_app/Screens/login.dart';

class MenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Column(
                children: [
                  MenueIcon(
                    iconSrc: Icon(Icons.home),
                    press: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                  ),
                  Text("Home"),
                ],
              ),
              Column(
                children: [
                  MenueIcon(
                    iconSrc: Icon(Icons.verified_user),
                    press: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => About()),
                      );
                    },
                  ),
                  Text("About"),
                ],
              ),
              Column(
                children: [
                  MenueIcon(
                    iconSrc: Icon(Icons.miscellaneous_services),
                    press: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Services()),
                      );
                    },
                  ),
                  Text("Services"),
                ],
              ),
              Column(
                children: [
                  MenueIcon(
                    iconSrc: Icon(Icons.work),
                    press: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Careers()),
                      );
                    },
                  ),
                  Text("Careers"),
                ],
              ),
              Column(
                children: [
                  MenueIcon(
                    iconSrc: Icon(Icons.coronavirus),
                    press: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Covid()),
                      );
                    },
                  ),
                  Text("Covid-19"),
                ],
              ),
              Column(
                children: [
                  MenueIcon(
                    iconSrc: Icon(Icons.contact_phone),
                    press: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Contact()),
                      );
                    },
                  ),
                  Text("Contact"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
