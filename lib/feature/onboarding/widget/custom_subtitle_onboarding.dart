import 'package:flutter/material.dart';

import '../../../core/resources/colors_managers.dart';
import '../../../core/resources/font_managers.dart';
import '../../../core/resources/height_managers.dart';
import '../../../core/resources/padding_managers.dart';
import '../../../core/resources/string_managers.dart';

class custom_subtitle_onboarding extends StatelessWidget {
  const custom_subtitle_onboarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: PaddingManagers.p70),
      child: Text(textAlign: TextAlign.center,
        StringManagers.subtitleString
        ,style: TextStyle(
          height: HeightManagers.h1,
          fontSize: FontSize.f15,
          fontWeight: FontWeight.w500,
          color: ColorsManagers.whiteColor,
        ),

      ),
    );
  }
}
