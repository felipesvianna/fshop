import 'package:flutter/material.dart';

import './generate_login_form.dart';
import './generate_social_media_buttons.dart';
import './generate_signup_link.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage("assets/img/bg_login_screen.png"), //Image bg
            fit:BoxFit.cover,
          ),
          SingleChildScrollView( //So the column can scroll
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage("assets/img/logo.png")
                ),
                generateLoginForm(), //It returns a form
                socialMediaButtons(), //It returns a row
                generateSignUpLink(), //It returns a container
              ],
            ),
          ),
        ],
      )
    );
  }
}