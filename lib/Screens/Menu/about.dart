import 'package:brr_sample_app/Reused/colors.dart';
import 'package:brr_sample_app/Screens/Menu/services.dart';
import 'package:brr_sample_app/Screens/Sidemenu/feedback.dart';
import 'package:flutter/material.dart';

import '../login.dart';
import 'careers.dart';
import 'contact.dart';
import 'covid.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //  backgroundColor: Colors.white,



        body:
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/ScreensPics/AboutUs.png'),
              Card(
                //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 150, 0),
                      child: Row(
                        children: [
                          buildDivider(),
                          Divider(
                            color: Colors.red,
                            height: 50,
                            thickness: 10,
                          ),
                          Text("Our Mission",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),)
                          //  buildDivider(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Text("To become one of the most trusted software development partner for our esteemed customers and businesses. \n"
                          "\nWe shall be part of our customer growth and help them achieve business results by being agile and co-operative."),
                    ),
                  ],
                ),

              ),
              Card(
                //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 160, 0),
                      child: Row(
                        children: [
                          buildDivider(),
                          Divider(
                            color: Colors.red,
                            height: 50,
                            thickness: 10,
                          ),
                          Text("Our Vision",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),)
                          //  buildDivider(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Text("To build a team of enthusiastic software developers and engineers to tackle any kind of IT challenge \n"
                          "\nBecome a world's renowned software company"),
                    ),
                  ],
                ),

              ),

              
            ],
          ),
        ),


      ),
    );
  }
  Expanded buildDivider() {
    return Expanded(
      child: Divider(
        color: Colors.red,
        height: 5,
        thickness: 2,
      ),
    );
  }
}
