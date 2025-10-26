import 'package:flutter/material.dart';
import '../../../controller/main_home_controller.dart';
import '../widget/custom_bottom_navbar_main_homescreen.dart';

class MainHomeScreen extends StatefulWidget {
 const  MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
 late var index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainHomeController.mainHomePages[index],
      bottomNavigationBar:

      custom_bottom_navbar_main_homescreen(
        index: index,
        onTap: (value){
          index=value;
          setState(() {

          });
        },
      ),
    );
  }
}

