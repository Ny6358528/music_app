import 'package:flutter/material.dart';
import 'package:music/core/resources/font_managers.dart';
import 'package:music/core/resources/routes_managers.dart';


import 'feature/splash/screen/Splashscreen.dart'; // assuming your file is named splashscreen.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        fontFamily: FontManagers.fontName
      ),
      initialRoute: RoutesNamed.splashScreen,
routes: RoutesManagers.routes,

      home: Splashscreen(),
    );
  }
}
