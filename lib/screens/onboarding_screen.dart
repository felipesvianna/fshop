import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

import './not_found_page.dart';

class OnBoardingScreen extends StatelessWidget {
  final pages = [
    PageViewModel(
        pageColor: const Color(0xFFFFFFFF),
        // iconImageAssetPath: 'assets/air-hostess.png',
        //bubble: Image.asset('assets/img/air-hostess.png'),
        body: Text(
          'Fique a vontade em nossa loja.',
        ),
        textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.black),
        mainImage: Image.asset(
          'assets/img/basket.png',
          height: 285.0,
          width: 285.0,
          alignment: Alignment.center,
        ),
        title: Text('Oi!'),
    ),
    PageViewModel(
      pageColor: const Color(0xFFFFFFFF),
      //iconImageAssetPath: 'assets/waiter.png',
      body: Text(
        'Utilize nosso menu de categorias de produtos e sistema de busca para encontrar o que você procura',
      ),
      title: Text('Encontre seu produto', style:TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      mainImage: Image.asset(
        'assets/img/choose.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.black),
    ),
    PageViewModel(
      pageColor: const Color(0xFFFFFFFF),
      //iconImageAssetPath: 'assets/taxi-driver.png',
      body: Text(
        'Efetue a compra e receba notificações sobre o rastreamento. Ao recebê-la, dê seu feedback por favor.',
      ),
      title: Text('Efetue a compra', style:TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      mainImage: Image.asset(
        'assets/img/shipping.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.black),
    ),
];

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'F-Shop', //title of app
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), //ThemeData
      home: Builder(
        builder: (context) => IntroViewsFlutter(
              pages,
              onTapDoneButton: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotFoundPage(),
                  ), //MaterialPageRoute
                );
              },
              showSkipButton:
                  true, //Whether you want to show the skip button or not.
              pageButtonTextStyles: TextStyle(
                //color: Colors.white,
                fontSize: 18.0,
              ),
            ), //IntroViewsFlutter
      ), //Builder
    ); //Material App
  }
}