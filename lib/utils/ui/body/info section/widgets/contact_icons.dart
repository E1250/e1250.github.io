import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants/locals.dart';
import 'package:portfolio/utils/service/appropriate_size.dart';
import 'package:portfolio/utils/service/url_launcher.dart';

Widget contactIcons(BuildContext context){
  final data = fetchedData.contact;
  return Padding(
    padding: EdgeInsets.symmetric(horizontal:40,vertical: 20 ),
    child: Row(
      children: [
        data.dribbbleURL!=null?_customIcon('assets/icons/dribbble.svg', data.dribbbleURL!,context):Container(),
        data.githubURL!=null?_customIcon('assets/icons/github.svg', data.githubURL!,context):Container(),
        data.kaggleURL!=null?_customIcon('assets/icons/kaggle.svg', data.kaggleURL!,context):Container(),
        data.linkedinURL!=null?_customIcon('assets/icons/linkedin.svg', data.linkedinURL!,context):Container(),
        data.linkedinURL!=null?_customIcon('assets/icons/hashnode.svg', data.hashNodeURL!,context):Container(),

      ],
    ),
  );
}

Widget _customIcon(String iconPath,String url,BuildContext context){
  return Expanded(
    flex: 1,
    child: GestureDetector(
      onTap: (){
        launchURL(url);
      },
      child: SizedBox(height: ScreenRatio(context: context).appropriateSize(50),child: SvgPicture.asset(iconPath))
    ),
  );
}