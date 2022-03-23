import 'package:flutter/material.dart';
import 'package:portfolio/constants/locals.dart';
import 'package:portfolio/utils/service/whatsapp_unilink.dart';

class WhatsAppButton extends StatelessWidget {
  const WhatsAppButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: Image.asset('assets/icons/whatsapp.png',fit: BoxFit.fill),
      onPressed: (){
        launchWhatsApp(fetchedData.contact.phoneNumber);
      },
    );
  }
}
