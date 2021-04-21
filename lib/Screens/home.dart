import 'package:brr_sample_app/Home/page_indicator.dart';
import 'package:brr_sample_app/Screens/cart.dart';
import 'package:flutter/material.dart';
import 'package:brr_sample_app/Home/menu_list.dart';

import 'Sidemenu/profile.dart';

class Home extends StatefulWidget {
  final String userName;
  final String dp;

  // receive data from the FirstScreen as a parameter
  Home({Key key, @required this.userName, @required this.dp}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        ),
    );
  }
}