import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart' as whats;

launchWhatsApp(phoneNumber) async {
  final link = whats.WhatsAppUnilink(
    phoneNumber: phoneNumber.toString(),
    text: "Hello, Are You Available Now",
  );
  await launch('$link');
}