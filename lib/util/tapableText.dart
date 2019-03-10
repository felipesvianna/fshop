
import 'package:flutter/material.dart';

/*
Widget that get an Text widget and a function.
It applies the onTap function on the given text.
*/
Widget tapableText(Widget inputText, Function onTap) {
  return GestureDetector(
    onTap: onTap,
    child: inputText,
  );
}