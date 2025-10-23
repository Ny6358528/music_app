import 'package:flutter/material.dart';
import '../../feature/home/screen/home_screen.dart';
import '../../feature/onboarding/screen/on_boardingscreen.dart';
import '../../feature/splash/screen/Splashscreen.dart';


class RoutesManagers {
  static Map<String, Widget Function(BuildContext)> routes = {
    RoutesNamed.splashScreen:(BuildContext context)=>Splashscreen(),
    RoutesNamed.onBoardingScreen:(BuildContext context)=>OnBoardingscreen(),
    RoutesNamed.homeScreen:(BuildContext context)=>HomeScreen()
  };
}


class RoutesNamed{
static const splashScreen='splashScreen';
static const onBoardingScreen='onBoardingScreen';
static const homeScreen='homeScreen';
}