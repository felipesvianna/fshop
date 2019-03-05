import 'package:flutter/material.dart';

import '../../widgets/tapableText.dart'; //show tapableText widget

Widget generateLoginForm (){
  return Container(
            padding: const EdgeInsets.only(top: 20.0, left: 40.0, right: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "E-Mail"
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Senha"
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, bottom: 10),
                  alignment: Alignment.centerRight,
                  child: tapableText(Text('Esqueceu a senha?', style: TextStyle(fontSize: 12)),
                    (){print('Esqueceu a senha? tocado');})
                ),
                RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: 80.0),
                  textColor: Colors.white,
                  color: Colors.green,
                  child: Text("LOGIN"),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                ),
              ]
            )
  );
}