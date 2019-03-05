import 'package:flutter/material.dart';

import '../../widgets/tapableText.dart'; //show tapableText widget
import './generate_login_form.dart';

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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage("assets/img/logo.png")
              ),
              Form(
                child: generateLoginForm()
              ),
              RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 80.0),
                textColor: Colors.white,
                color: Colors.green,
                child: Text("LOGIN"),
                onPressed: () {},
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    textColor: Colors.white,
                    color: Colors.blue,
                    child: Text("Facebook"),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  ),
                  RaisedButton(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      textColor: Colors.white,
                      color: Colors.red,
                      child: Text("Google"),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  )
                ]
              ),
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 14),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Novo por aqui? ', style: TextStyle(fontSize: 14),),
                      tapableText(Text('Cadastre-se!', style: TextStyle(fontSize: 14, color: Colors.red, decoration: TextDecoration.underline)),
                      (){print('Cadastre-se tocado');}
                    )
                  ]
                )
              ),
            ],
          ),
        ],
      )
    );
  }
}