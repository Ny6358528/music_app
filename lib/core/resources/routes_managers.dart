import 'package:flutter/material.dart';

import '../../feature/main_home/screen/main_home_screen.dart';
import '../../feature/onboarding/screen/on_boardingscreen.dart';
import '../../feature/play_music/screens/play_muaic_screen.dart';
import '../../feature/splash/screen/Splashscreen.dart';


class RoutesManagers {
  static Map<String, Widget Function(BuildContext)> routes = {
    RoutesNamed.splashScreen:(BuildContext context)=>Splashscreen(),
    RoutesNamed.onBoardingScreen:(BuildContext context)=>OnBoardingscreen(),
    RoutesNamed.MainHomeScreen:(BuildContext context)=>MainHomeScreen(),
    RoutesNamed.playMuaicScreen:(BuildContext context)=>PlayMusicScreen(),
  };
}


class RoutesNamed{
static const splashScreen='splashScreen';
static const onBoardingScreen='onBoardingScreen';
static const MainHomeScreen='MainHomeScreen';
static const playMuaicScreen='playMuaicScreen';
}