import 'package:flutter/material.dart';

class ProfileMap extends StatelessWidget {


  var profileMap = [
    {'name': 'Ronit', 'dp': 'assets/dp/ronit.jpeg', 'email-id': 'ronit@gmail.com', 'passcode': 'brr@123'},
    {'name': 'Sunita', 'dp': 'assets/dp/sunita.jpeg', 'email-id': 'sunita@gmail.com', 'passcode': 'brr@123'},
    {'name': 'Jagadeesh', 'dp': 'assets/dp/jagadeesh.jpeg', 'email-id': 'jagadeesh@gmail.com', 'passcode': 'brr@123'},
    {'name': 'Manoj', 'dp': 'assets/dp/manoj.jpeg', 'email-id': 'manoj@gmail.com', 'passcode': 'brr@123'},
    {'name': 'Thulasi', 'dp': 'assets/dp/thulasi.jpeg', 'email-id': 'thulasi@gmail.com', 'passcode': 'brr@123'},
    {'name': 'Vamshi', 'dp': 'assets/dp/vamshi.jpeg', 'email-id': 'vamshi@gmail.com', 'passcode': 'brr@123'},
    {'name': 'Shiva', 'dp': 'assets/dp/shiva.jpeg', 'email-id': 'shiva@gmail.com', 'passcode': 'brr@123'},
    {'name': 'Nikitha', 'dp': 'assets/image7.jpg', 'email-id': 'nikitha@gmail.com', 'passcode': 'brr@123'},
    {'name': 'Sindhu', 'dp': 'assets/image0.jpg', 'email-id': 'sindhu@gmail.com', 'passcode': 'brr@123'},
  ];

  get i => null;


  @override
  Widget build(BuildContext context) {
    // wrapped around a column so that the avatar doesn't stretch
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
        )
      ],
    );
  }
}