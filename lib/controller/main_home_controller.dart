import 'package:flutter/material.dart';

import '../feature/main_home/screen/home_page.dart';

class MainHomeController {
  static final List<Icon> mainHomeIcons = [
    Icon(Icons.align_horizontal_left),
    Icon(Icons.home_outlined),
    Icon(Icons.favorite_border),
    Icon(Icons.list),
    Icon(Icons.settings)
  ];
  static final List<Widget> mainHomePages = [

    Scaffold(body: Center(child: Text('Page 1'))),
    HomePage(),
    Scaffold(body: Center(child: Text('Page 3'))),
    Scaffold(body: Center(child: Text('Page 4'))),
    Scaffold(body: Center(child: Text('Page 5'))),
  ];
}