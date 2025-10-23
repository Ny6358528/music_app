import 'package:flutter/cupertino.dart';

import '../core/resources/routes_managers.dart';
import '../core/resources/time_managers.dart';
class SplashController{

 static void navigatorToOnBoandring({ required BuildContext context}){
    Future.delayed(  const  Duration(seconds: SecManagers.sec3),(){
      Navigator.pushReplacementNamed(context, RoutesNamed.onBoardingScreen );
    });
  }



}

