import 'package:flutter/material.dart';
import 'package:music/core/resources/colors_managers.dart';

import '../../../controller/splash_controller.dart';
import '../../onboarding/screen/on_boardingscreen.dart';
import '../widget/custom_logo_splashscreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
 void  initState() {
    super.initState();
    SplashController.navigatorToOnBoandring(context: context);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: custom_logo_splashscreen(),

    );
  }
}

