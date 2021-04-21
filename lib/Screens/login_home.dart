import 'package:brr_sample_app/Home/page_indicator.dart';
import 'package:brr_sample_app/Reused/colors.dart';
import 'package:brr_sample_app/Screens/cart.dart';
import 'package:brr_sample_app/Screens/home.dart';
import 'package:flutter/material.dart';
import 'package:brr_sample_app/Home/menu_list.dart';
import 'package:brr_sample_app/Screens/Menu/about.dart';
import 'package:brr_sample_app/Screens/Menu/careers.dart';
import 'package:brr_sample_app/Screens/Menu/contact.dart';
import 'package:brr_sample_app/Screens/Menu/services.dart';
import 'package:brr_sample_app/Screens/catalog.dart';
import 'package:brr_sample_app/Screens/login.dart';

import 'Menu/covid.dart';
import 'Sidemenu/profile.dart';
import 'Sidemenu/settings.dart';
import 'Sidemenu/feedback.dart';
import 'package:brr_sample_app/Reused/circleAvtar.dart';

class LoginHome extends StatefulWidget {
  final String userName;
  final String dp;

  // receive data from the FirstScreen as a parameter
  LoginHome({Key key, @required this.userName, @required this.dp}) : super(key: key);

  @override
  _LoginHomeState createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {
  int _selectedIndex = 0;
  final List<Widget>_children = [
    Home(),
    Cart(),
    Profile()
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,

        appBar: AppBar(
          /*
            leading: GestureDetector(
              onTap: (){},
              child: Icon(Icons.menu),
            ),

             */
          backgroundColor: DarkColor,
          title: Text('Brr Softwares'),
          centerTitle: true,
          actions: <Widget>[
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(this.widget.dp),
            ),
          ],
        ),

        body:// _children[_selectedIndex]
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.03),

              // Center(child: _children[_selectedIndex]),

              Padding(
                padding: const EdgeInsets.all(5.0),
                child: MenuList(),
              ),
              SizedBox(
                width: 400.0,
                height: 300.0,
                child: PageIndicator(),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 20, 40, 0),
                    child: RaisedButton(
                        color: Colors.red,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return Careers();
                          },
                          ),
                          );
                        },
                        child: Text("For More Openings")),
                  ),
                  SizedBox(width: size.height * 0.03),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 10, 0),
                    child: RaisedButton(
                        color: Colors.red,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return Catalog();
                          },
                          ),
                          );
                        },
                        child: Text("Services")),
                  ),
                ],
              )


              //SizedBox(height: size.height * 0.5),

              /*
                  Text('Welcome ${widget.userName} !!!',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Catalog()),
                        );
                      },
                      child: Text('Start Shopping')
                  )

                   */
              // Center(child: _children[_selectedIndex]),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onItemTapped,
          //selectedIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                title: new Text('Home')
            ),
            BottomNavigationBarItem(
                icon: new Icon(Icons.shopping_cart),
                title: new Text('Cart')
            ),
            BottomNavigationBarItem(
                icon: new Icon(Icons.person),
                title: new Text('Profile')
            )
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          //onTap: _onItemTapped,
        ),
/*
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.arrow_forward),
            backgroundColor: Colors.blue,
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
          ),


 */
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            //padding: EdgeInsets.zero,
            children: <Widget>[
              /*

                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Home();
                    },
                    ),
                    ),
                  },
                ),

                 */
              ListTile(
                leading: Icon(Icons.verified_user),
                title: Text('About'),
                onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return About();
                  },
                  ),
                  ),},
              ),
              ListTile(
                leading: Icon(Icons.miscellaneous_services),
                title: Text('Services'),
                onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Services();
                  },
                  ),
                  ),
                },
              ),
              ListTile(
                leading: Icon(Icons.work),
                title: Text('Careers'),
                onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Careers();
                  },
                  ),
                  ),
                },
              ),
              ListTile(
                leading: Icon(Icons.coronavirus),
                title: Text('Covid-19'),
                onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Covid();
                  },
                  ),
                  ),
                },
              ),
              ListTile(
                leading: Icon(Icons.contact_phone),
                title: Text('Contact'),
                onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Contact();
                  },
                  ),
                  ),
                },
              ),
              ListTile(
                leading: Icon(Icons.border_color),
                title: Text('Feedback'),
                onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Feedbacks();
                  },
                  ),
                  ),
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
                onTap: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Login();
                  },
                  ),
                  ),
                },
              ),
            ],
          ),
        ),

      ),
    );
  }
}