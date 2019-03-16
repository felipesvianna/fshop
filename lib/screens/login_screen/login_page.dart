import 'package:flutter/material.dart';

import './generate_login_form.dart';
import '../../util/tapableText.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

Widget _buildSignUpLink(){
  return Container(
          padding: EdgeInsets.only(top: 20, bottom: 14),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Novo por aqui? ', style: TextStyle(fontSize: 14),),
                tapableText(Text('Cadastre-se!', key: Key('signup_tappable_text'), style: TextStyle(fontSize: 14, color: Colors.red, decoration: TextDecoration.underline)),
                (){print('Cadastre-se tocado');}
              )
            ]
          )
        );
}

Widget _buildSocialMediaButtons(){
  return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RaisedButton(
              key: Key('facebook_raised_button'),
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              textColor: Colors.white,
              color: Colors.blue,
              child: Text("Facebook"),
              onPressed: () {},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            ),
            RaisedButton(
              key: Key('google_raised_button'),
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              textColor: Colors.white,
              color: Colors.red,
              child: Text("Google"),
              onPressed: () {},
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            )
          ]
        );
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
                  key: Key('logo_image'),
                  image: AssetImage("assets/img/logo.png")
                ),
                generateLoginForm(context), //It returns a form
                _buildSocialMediaButtons(), //It returns a row
                _buildSignUpLink(), //It returns a container
              ],
            ),
          ),
        ],
      )
    );
  }
}