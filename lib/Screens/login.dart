import 'package:brr_sample_app/Screens/login_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:brr_sample_app/Reused/button.dart';
import 'package:brr_sample_app/Reused/have_account.dart';
import 'package:brr_sample_app/Reused/input_field.dart';
import 'package:brr_sample_app/Reused/showAlertDialog.dart';
import 'package:brr_sample_app/Screens/home.dart';
import 'package:brr_sample_app/Screens/signup.dart';
import 'package:brr_sample_app/Reused/circleAvtar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({
    Key key,
  }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  // this allows us to access the TextField text
  //
  TextEditingController textFieldController1 = TextEditingController();
  TextEditingController textFieldController2 = TextEditingController();
  final ProfileMap avatar = new ProfileMap();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 50),
              Text(
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              /*
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/icons/login.svg",
                height: size.height * 0.35,
              ),

               */
              SizedBox(height: size.height * 0.03),
              RoundedInputField(
                controller: textFieldController1,
                hintText: "Email",
                icon: Icons.person,
                onChanged: (value) {},
                obscure: false,
              ),
              RoundedInputField(
                controller: textFieldController2,
                hintText: "Password",
                icon: Icons.visibility,
                onChanged: (value) {},
                obscure: true,
              ),
              RoundedButton(
                text: "LOGIN",
                press: () {
                  //print(avatar.profileMap[0]);
                  for(var obj in avatar.profileMap)
                  {
                    if ( (obj['email-id'] == textFieldController1.text) && (obj['passcode'] == textFieldController2.text))
                    {
                      print(obj);
                      //SharedPreferences prefs = await SharedPreferences.getInstance();
                      //prefs.setBool('UserRegistered', true);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginHome(userName: obj['name'], dp: obj['dp'],);
                          },
                        ),
                      );
                      return;
                    }
                  }
                  print('User details not found');
                  showAlertDialog(context);
                },
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUp();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
