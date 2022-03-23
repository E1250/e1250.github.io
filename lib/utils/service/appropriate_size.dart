import 'package:flutter/material.dart';

class ScreenRatio {
  final BuildContext context;
  double screenWidth = 0.0;
  double screenHeight = 0.0;

  ScreenRatio({required this.context}){
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
  }

  double appropriateSize(double num){
    return (screenWidth/screenHeight)*num;
  }

}

