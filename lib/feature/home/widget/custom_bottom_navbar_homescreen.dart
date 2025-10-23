import 'package:flutter/material.dart';

import '../../../controller/home_controller.dart';
import '../../../core/resources/colors_managers.dart';

class custom_bottom_navbar_homescreen extends StatelessWidget {
  const custom_bottom_navbar_homescreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorsManagers.backgroundNavBottomIconColor,
      items: [
        for(int i=0;i<HomeController.homeIxons.length;i++)
          BottomNavigationBarItem(icon:HomeController. homeIxons[i], label: ""),


      ],
    );
  }
}
