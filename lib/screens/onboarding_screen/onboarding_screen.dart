import 'package:flutter/material.dart';

import '../not_found_page.dart' show NotFoundPage; //For testing
import './dots_indicator.dart' show DotsIndicator;
import './page1.dart';
import './page2.dart';
import './page3.dart';

class OnBoardingPage extends StatefulWidget {
  OnBoardingPage({Key key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final _controller = PageController();
  final List<Widget> _pages = [
    Page1(),
    Page2(),
    Page3()
  ];
  int page = 0;

  @override
  void initState() {
    super.initState();
  }

  Widget _buildPageViewBuilder(context, controller, pages) {
    return Positioned.fill(
            child: PageView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              controller: _controller,
              itemCount: _pages.length,
              itemBuilder: (BuildContext context, int index) {
                return _pages[index % _pages.length];
              },
              onPageChanged: (int p){
                setState(() {
                  page = p;
                });
              },
            ),
          );
  }

  Widget _buildSkipButton() {
    return Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: SafeArea(
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                primary: false,
                title: null,
                actions: <Widget>[
                  FlatButton(
                    key: Key('skipButton'),
                    child: Text('Pular', style: TextStyle(color: Colors.black),),
                    onPressed: () {
                      //Navigator.pushReplacementNamed(context, '/notFoundPageRoute');
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (BuildContext context) => NotFoundPage())
                      );//For testing. Can't test with pushReplacementNamed
                    },
                  )
                ],
              ),
            ),
          );
  }
  
  Widget _buildDotsIndicators(controller, page) {
    return Positioned(
            bottom: 10.0,
            left: 0.0,
            right: 0.0,
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: DotsIndicator(
                      controller: _controller,
                      itemCount: _pages.length,
                      onPageSelected: (int page) {
                        _controller.animateToPage(
                          page,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: <Widget>[
          _buildPageViewBuilder(context, _controller, _pages),
          _buildSkipButton(),
          _buildDotsIndicators(_controller, page)
        ],
      )
    );
  }
}