import 'package:flutter/material.dart';
import 'package:music/core/resources/height_managers.dart';
import 'package:music/core/resources/width_mangers.dart';

import '../../../core/resources/alignment_managers.dart';
import '../../../core/resources/asset_managers.dart';
import '../../../core/resources/colors_managers.dart';

class custom_logo_splashscreen extends StatelessWidget {
  const custom_logo_splashscreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(

              AlignmentManagers.x0_20, AlignmentManagers.y_0_98),
          end: Alignment(AlignmentManagers.x_0_20, AlignmentManagers.y0_98
          ),
          colors: [
            ColorsManagers.primaryColor,
            ColorsManagers.scenderyColor
          ],
        ),
      ),
      child: Center(
        child: Image.asset(
          AssetManagers.logoimage,
          width: HeightManagers.h200,
          height: WidthMangers.w200,
        ),
      ),
    );
  }
}

