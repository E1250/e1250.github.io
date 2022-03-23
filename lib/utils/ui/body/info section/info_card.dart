import 'package:flutter/material.dart';
import 'package:portfolio/constants/locals.dart';
import 'package:portfolio/utils/ui/body/info%20section/widgets/custom_texts.dart';

import 'widgets/contact_icons.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if(constraints.maxWidth >= 600){
          // Desktop Part
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      textInfo(context),
                      SizedBox(height: 15),
                      contactIcons(context)
                    ],
                  ),
                ),
              Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 800,
                      width: 800,
                      child: FittedBox(child: CircleAvatar(backgroundImage: NetworkImage(fetchedData.info.picURL!)))) )
            ],
          );
        }else{
          // Phone Part
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                  height: 300,
                  width: 300,
                  child: FittedBox(child: CircleAvatar(backgroundImage: NetworkImage(fetchedData.info.picURL!)))),
              SizedBox(height: 40),
              Column(
                children: [
                  textInfo(context),
                  SizedBox(height: 15,),
                  contactIcons(context)
                ],
              ),
            ],
          );
        }
      },
    );
  }
}
