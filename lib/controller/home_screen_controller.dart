import 'package:flutter/cupertino.dart';

import '../core/resources/routes_managers.dart';

class HomePageController{

 static void navHomePageToPlayMusicPage({ required  BuildContext context,required int index}){
   Navigator.pushNamed(context,RoutesNamed.playMuaicScreen,arguments: index);
  }

 static void navPlayMusicPageToPoP({ required  BuildContext context}){
   Navigator.pop(context);
 }

}