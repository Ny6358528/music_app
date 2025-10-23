import 'package:flutter/material.dart';

import '../../../core/resources/alignment_managers.dart';
import '../../../core/resources/colors_managers.dart';
import '../../../core/resources/font_managers.dart';
import '../../../core/resources/height_managers.dart';
import '../../../core/resources/radius_managers.dart';
import '../../../core/resources/string_managers.dart';
import '../../../core/resources/width_mangers.dart';

class customButtonOnboarding extends StatelessWidget {
  const customButtonOnboarding({
    super.key, required this.onPressed, required this.text,
  });
final VoidCallback onPressed;
final String text;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onPressed,child: Container(
      width: WidthMangers.w171,
      height: HeightManagers.h60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment(AlignmentManagers.x0, AlignmentManagers.y_1),
              end: Alignment(AlignmentManagers.x0,AlignmentManagers.y1),
              colors: [
                ColorsManagers.blue2Color,
                ColorsManagers.whiteColor

              ]),
          borderRadius: BorderRadius.circular(RaduisManagers.r50),
          border: Border(top: BorderSide(color: ColorsManagers.whiteColor,width: WidthMangers.w1))
      ),
      child: Text(text,style: TextStyle(
        fontSize: FontSize.f16,
        fontWeight: FontWeight.w500,
        color: ColorsManagers.whiteColor,
      )),

    ),);
  }
}

