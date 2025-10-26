import 'package:flutter/material.dart';

import '../../../controller/main_home_controller.dart';
import '../../../core/resources/colors_managers.dart';

class custom_bottom_navbar_main_homescreen extends StatelessWidget {
  const custom_bottom_navbar_main_homescreen({
    super.key, required this.onTap, required this.index,
  });
  final ValueChanged<int> onTap;
 final int index ;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: ColorsManagers.selectedIconColor,
      unselectedItemColor: ColorsManagers.whiteColor,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      onTap:onTap ,
      currentIndex: index,
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorsManagers.backgroundNavBottomIconColor,
      items: [
        for(int i=0;i<MainHomeController.mainHomeIcons.length;i++)
          BottomNavigationBarItem(icon:MainHomeController. mainHomeIcons[i], label: ""),


      ],
    );
  }
}
