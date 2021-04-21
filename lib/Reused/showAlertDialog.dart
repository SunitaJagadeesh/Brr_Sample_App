import 'package:flutter/material.dart';
import 'package:brr_sample_app/Screens/login.dart';

showAlertDialog(BuildContext context) {

  // set up the buttons

  Widget okayButton = FlatButton(
    child: Text("OK"),
    onPressed:  () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Login failed"),
    content: Text("User details are invalid."),
    actions: [
     // cancelButton,
      okayButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}