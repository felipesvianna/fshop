import 'package:flutter/material.dart';

import './screens/login_screen/login_page.dart';
import './screens/not_found_page.dart';
import './screens/onboarding_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      //Routes
      routes: <String, WidgetBuilder>{
        '/homeRoute': (BuildContext context) => LoginPage(),
        '/notfoundpageRoute': (BuildContext context) => NotFoundPage(),
        '/onboarding': (BuildContext context) => OnBoardingScreen(),
      },
      onUnknownRoute: (RouteSettings context) => MaterialPageRoute(
          builder: (context) => NotFoundPage()
      )
    );
  }
}