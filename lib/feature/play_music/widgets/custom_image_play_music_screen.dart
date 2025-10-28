
import 'package:flutter/material.dart';

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
          height: 261,
          width: 248,
        ),
        SizedBox(height: 23),




        Text("NEW RULES",style: TextStyle(color: ColorsManagers.whiteColor,fontSize: FontSize.f18)),
        Text("Dua Lipa",style: TextStyle(color: ColorsManagers.whiteColor,fontSize: FontSize.f15)),

      ],
    );
  }
}
