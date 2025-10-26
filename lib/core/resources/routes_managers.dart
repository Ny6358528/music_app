import 'package:flutter/material.dart';

import '../../feature/main_home/screen/main_home_screen.dart';
import '../../feature/onboarding/screen/on_boardingscreen.dart';
import '../../feature/splash/screen/Splashscreen.dart';


class RoutesManagers {
  static Map<String, Widget Function(BuildContext)> routes = {
    RoutesNamed.splashScreen:(BuildContext context)=>Splashscreen(),
    RoutesNamed.onBoardingScreen:(BuildContext context)=>OnBoardingscreen(),
    RoutesNamed.MainHomeScreen:(BuildContext context)=>MainHomeScreen()
  };
}


class RoutesNamed{
static const splashScreen='splashScreen';
static const onBoardingScreen='onBoardingScreen';
static const MainHomeScreen='MainHomeScreen';
}