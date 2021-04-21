import 'package:flutter/material.dart';
import 'package:brr_sample_app/Reused/button.dart';
import 'package:brr_sample_app/Reused/have_account.dart';
import 'package:brr_sample_app/Reused/input_field.dart';
import 'package:brr_sample_app/Reused/launch_url.dart';
import 'package:brr_sample_app/Reused/or_divider.dart';
import 'package:brr_sample_app/Reused/social_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:brr_sample_app/Screens/home.dart';

import 'login.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height * 0.03),
              Text(
                "SIGNUP",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              RoundedInputField(
                hintText: "Name",
                icon: Icons.person,
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Email",
                icon: Icons.mail,
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Phone No",
                icon: Icons.contact_phone,
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Password",
                icon: Icons.visibility,
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Confirm Password",
                icon: Icons.visibility,
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "SIGNUP",
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){ return Login();
                    }
                   )
                  );
                },
              ),
              SizedBox(height: size.height * 0.02),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Login();
                      },
                    ),
                  );
                },
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocalIcon(
                    iconSrc: "assets/icons/facebook.svg",
                    press: () {
                      const url = 'https://www.facebook.com/brr.softwares';
                      launchURL(url);
                    },
                  ),
                  SocalIcon(
                    iconSrc: "assets/icons/twitter.svg",
                    press: () {
                      const url = 'https://twitter.com/BRRSoftwareSys';
                      launchURL(url);
                    },
                  ),
                  SocalIcon(
                    iconSrc: "assets/icons/google-plus.svg",
                    press: () {
                      const url = 'https://www.brrsoftwares.com/';
                      launchURL(url);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
