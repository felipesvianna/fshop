import 'package:flutter/material.dart';

Widget generateSocialMediaButtons(){
  return Row(
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
        );
}