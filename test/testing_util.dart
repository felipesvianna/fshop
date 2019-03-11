/*
File to store all functions to make testing easier.
*/

import 'package:flutter/material.dart';

Widget buildTestableWidget(Widget widget) {
  // https://docs.flutter.io/flutter/widgets/MediaQuery-class.html
  return MediaQuery(
    data: MediaQueryData(),
    child: MaterialApp(home: widget)
  );
}