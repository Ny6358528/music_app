
import 'package:flutter/material.dart';

import '../../../core/resources/colors_managers.dart';
import '../../../core/resources/font_managers.dart';
import '../../../core/resources/padding_managers.dart';
import '../../../core/resources/string_managers.dart';

class CustomTopTitleHomeScreen extends StatelessWidget {
  const CustomTopTitleHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(
        top: PaddingManagers.ptop30,
        left: PaddingManagers.pleft34,
      ),
      child: Text(StringManagers.recentlyPlayed,style: TextStyle(
          fontSize: FontSize.f18,
          fontWeight: FontWeight.w500,
          color: ColorsManagers.whiteColor
      ),


      ),

    );
  }
}

