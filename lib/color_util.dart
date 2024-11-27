import 'package:flutter/material.dart';

Color hexColor(String hexColorString) {
  if (hexColorString.length == 6) {
    int r = int.parse(hexColorString.substring(0, 2), radix: 16);
    int g = int.parse(hexColorString.substring(2, 4), radix: 16);
    int b = int.parse(hexColorString.substring(4, 6), radix: 16);
    return Color.fromARGB(255, r, g, b);
  } else {
    return Colors.white;
  }
}
