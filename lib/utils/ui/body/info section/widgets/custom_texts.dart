import 'package:flutter/material.dart';
import 'package:portfolio/constants/locals.dart';
import 'package:portfolio/utils/service/appropriate_size.dart';
Column textInfo(context){
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      customText(fetchedData.info.name, FontWeight.bold, ScreenRatio(context: context).appropriateSize(30)),
      SizedBox(height: 5,),
      customText(fetchedData.info.headline!, FontWeight.normal, ScreenRatio(context: context).appropriateSize(25)),
      SizedBox(height: 5,),
      customText(fetchedData.info.about!, FontWeight.normal, ScreenRatio(context: context).appropriateSize(20))
    ],

  );
}

Widget customText(String text,FontWeight fontWeight,double fontSize){
  return Align(
    alignment: Alignment.centerLeft,
    child: Text(
      text,
      textAlign: TextAlign.start,
      style: TextStyle(
          color: Colors.white,
          fontWeight: fontWeight,
          fontSize: fontSize
      ),
    ),
  );
}