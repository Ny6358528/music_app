import 'package:flutter/cupertino.dart';

import '../../../core/resources/colors_managers.dart';
import '../../../core/resources/font_managers.dart';
import '../../../core/resources/height_managers.dart';
import '../../../core/resources/string_managers.dart';

class CustomTitleOnboarding extends StatelessWidget {
  const CustomTitleOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Text(textAlign: TextAlign.center,
          StringManagers.titleString
          ,style: TextStyle(
            height: HeightManagers.h1,
            fontSize: FontSize.f50,
            fontWeight: FontWeight.w700,
            color: ColorsManagers.whiteColor,
          ),

        ),
        Text(textAlign: TextAlign.center,
          StringManagers.musicString
          ,style: TextStyle(
            height: HeightManagers.h1,
            fontSize: FontSize.f50,
            fontWeight: FontWeight.w700,
            color: ColorsManagers.blueColor,
          ),

        ),
      ],
    );
  }
}
