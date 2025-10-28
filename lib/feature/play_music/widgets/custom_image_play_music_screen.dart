
import 'package:flutter/material.dart';
import 'package:music/core/resources/height_managers.dart';
import 'package:music/core/resources/width_mangers.dart';

import '../../../core/resources/colors_managers.dart';
import '../../../core/resources/font_managers.dart';

class CustomImagePlayMusicScreen extends StatelessWidget {
  const CustomImagePlayMusicScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage("assets/images/imageplaymusicpage.png"),
          fit: BoxFit.cover,
          height: HeightManagers.h261,
          width: WidthMangers.w248,
        ),
        SizedBox(height: HeightManagers.h23),




        Text("NEW RULES",style: TextStyle(color: ColorsManagers.whiteColor,fontSize: FontSize.f18)),
        Text("Dua Lipa",style: TextStyle(color: ColorsManagers.whiteColor,fontSize: FontSize.f15)),

      ],
    );
  }
}
