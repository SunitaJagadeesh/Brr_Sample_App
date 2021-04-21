import 'package:brr_sample_app/Reused/colors.dart';
import 'package:brr_sample_app/Screens/Menu/services.dart';
import 'package:brr_sample_app/Screens/Sidemenu/feedback.dart';
import 'package:flutter/material.dart';

import '../login.dart';
import 'about.dart';
import 'careers.dart';
import 'contact.dart';
import 'covid.dart';

class Services extends StatelessWidget {
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
                Image.asset('assets/ScreensPics/OurServices.png'),
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
                                  Text("OUR TOP SERVICES",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w600,
                                    ),)
                                  //  buildDivider(),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 150, 0),
                              child: Text("Our Best Services",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        ),



                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
                              child: Text("Application Development",
                                style: TextStyle(
                                  fontSize: 25,
                                ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("We can help you to develop a variety of \n software applications matching your \n bussiness demands.",
                                textAlign: TextAlign.center,),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
                              child: Text("Kafka Development",
                                style: TextStyle(
                                  fontSize: 25,
                                ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("Our certified Kafka developers can be handy \n to handle large data sets and the related \n streaming tasks.",
                                textAlign: TextAlign.center,),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
                              child: Text("MuleSoft Development",
                                style: TextStyle(
                                  fontSize: 25,
                                ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("Our certified MuleSoft resources can \n handle any type of integration challenges \n that limit your IT.",
                                textAlign: TextAlign.center,),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
                              child: Text("Big Data Application Delivery",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("Our certified consultants work with an\n ecosystem of Big Data platforms and PaaS \n providers, including Hortonworks, MapR, \n Cloudera, Microsoft Azure and Confluent to \n ensure best outcome",
                                textAlign: TextAlign.center,),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
                              child: Text("Salesfoce Development",
                                style: TextStyle(
                                  fontSize: 25,
                                ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("Our expert resources and dedicated \n consultants will work closely with your team \n to understand your overarching goals and \n requirements, your customers’ behaviour, \n and the results expected by different \n business users",
                                textAlign: TextAlign.center,),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
                              child: Text("AWS/Azure/GCP Services",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("Our cloud platform experts of \n AWS/Azure/GCP will help in achieving the \n workload demands and will bring down the \n spending on the infrastructure maintenance \n and our 24/7 support will enhance your \n customer experience.",
                                textAlign: TextAlign.center,),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
                              child: Text("Mobile Application",
                                style: TextStyle(
                                  fontSize: 25,
                                ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("Our samll device engineering team will help \n in developing softwares for mobile devices, \n such as personal digital assistants, enterprise \n digital assistants or mobile phones.",
                                textAlign: TextAlign.center,),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
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
