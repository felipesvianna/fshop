
import 'package:flutter/material.dart';

Widget tapableText(Widget inputText, Function onTap) {
  return GestureDetector(
    onTap: onTap,
    child: inputText,
  );
}