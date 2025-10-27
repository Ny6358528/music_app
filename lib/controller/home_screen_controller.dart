import 'package:flutter/cupertino.dart';

import '../core/resources/routes_managers.dart';

class HomePageController{

 static void navHomePageToPlayMusicPage({ required  BuildContext context}){
   Navigator.pushNamed(context,RoutesNamed.playMuaicScreen);
  }



}