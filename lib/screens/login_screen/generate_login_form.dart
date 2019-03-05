import 'package:flutter/material.dart';

import '../../widgets/tapableText.dart'; //show tapableText widget

Widget generateLoginForm (){
  return Container(
                  padding: const EdgeInsets.all(40.0),
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
                        padding: EdgeInsets.only(top: 20),
                        alignment: Alignment.centerRight,
                        child: tapableText(Text('Esqueceu a senha?', style: TextStyle(fontSize: 12)),
                          (){print('Esqueceu a senha? tocado');})
                      ),
                    ]
                  )
                );
}