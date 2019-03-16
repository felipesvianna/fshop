import 'package:flutter/material.dart';

import '../../util/tapableText.dart' show tapableText;
import '../../screens/onboarding_screen/onboarding_screen.dart' show OnBoardingPage;


Widget _buildEmailField() {
  return TextFormField(
            key: Key('email_form_field'),
            decoration: InputDecoration(
              labelText: "E-Mail"
            ),
            keyboardType: TextInputType.emailAddress,
          );
}

Widget _buildPasswordField() {
  return TextFormField(
            key: Key('password_form_field'),
            decoration: InputDecoration(
              labelText: "Senha"
            ),
            keyboardType: TextInputType.text,
            obscureText: true,
          );
}
Widget _buildForgotPasswordButton() {
  return Container(
            padding: EdgeInsets.only(top: 20, bottom: 10),
            alignment: Alignment.centerRight,
            child: tapableText(Text('Esqueceu a senha?', key: Key('forgot_password_tappable_text'), style: TextStyle(fontSize: 12)),
              (){print('Esqueceu a senha? tocado');})
          );
}
Widget _buildLoginButton(context) {
  return RaisedButton(
            key: Key('login_raised_button'),
            padding: EdgeInsets.symmetric(horizontal: 80.0),
            textColor: Colors.white,
            color: Colors.green,
            child: Text("LOGIN"),
            onPressed: () {
              //Navigator.pushNamed(context, '/onBoardingRoute');
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (BuildContext context) => OnBoardingPage())
              );//For testing. Can't test with pushReplacementNamed
            },
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        );
}

Widget generateLoginForm (BuildContext context){
  return Form(
      child: Container(
              padding: const EdgeInsets.only(top: 20.0, left: 40.0, right: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildEmailField(),
                  _buildPasswordField(),
                  _buildForgotPasswordButton(),
                  _buildLoginButton(context)
                ]
              )
    ),
  );
}