import 'package:flutter/material.dart';
import 'info section/info_card.dart';

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          InfoCard()
        ],
      ),
    );
  }
}
