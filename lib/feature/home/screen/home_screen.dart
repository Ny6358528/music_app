import 'package:flutter/material.dart';
import '../widget/custom_bottom_navbar_homescreen.dart';

class HomeScreen extends StatelessWidget {
 const  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: custom_bottom_navbar_homescreen(),
    );
  }
}

