import 'package:flutter/material.dart';

import '../../util/tapableText.dart' show tapableText;

Widget generateLoginForm (BuildContext context){
  return Form(
      child: Container(
              padding: const EdgeInsets.only(top: 20.0, left: 40.0, right: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    key: Key('email_form_field'),
                    decoration: InputDecoration(
                      labelText: "E-Mail"
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextFormField(
                    key: Key('password_form_field'),
                    decoration: InputDecoration(
                      labelText: "Senha"
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20, bottom: 10),
                    alignment: Alignment.centerRight,
                    child: tapableText(Text('Esqueceu a senha?', key: Key('forgot_password_tappable_text'), style: TextStyle(fontSize: 12)),
                      (){print('Esqueceu a senha? tocado');})
                  ),
                  RaisedButton(
                    key: Key('login_raised_button'),
                    padding: EdgeInsets.symmetric(horizontal: 80.0),
                    textColor: Colors.white,
                    color: Colors.green,
                    child: Text("LOGIN"),
                    onPressed: () {
                      Navigator.pushNamed(context, '/onBoardingRoute');
                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  ),
                ]
              )
    ),
  );
}