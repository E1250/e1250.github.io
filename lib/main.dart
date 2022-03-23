import 'package:flutter/material.dart';
import 'package:portfolio/constants/locals.dart';
import 'package:portfolio/utils/ui/app_bar.dart';
import 'utils/service/fetch_data.dart';
import 'utils/ui/body/body.dart';
import 'utils/ui/floating_button.dart';

void main() {
  fetchData().then((data){
    fetchedData = data;
    runApp(const MyApp());
  });

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor: Colors.black87,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: const WhatsAppButton(),
      extendBody: true,
      extendBodyBehindAppBar: true,
      body:MainBody(),
    );
  }
}

