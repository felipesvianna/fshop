import 'package:flutter/material.dart';

import '../../util/tapableText.dart' show tapableText;

Widget generateSignUpLink(){
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