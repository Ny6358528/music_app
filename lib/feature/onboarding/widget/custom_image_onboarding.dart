import 'package:flutter/material.dart';
import 'package:music/core/resources/height_managers.dart';

import '../../../core/resources/alignment_managers.dart';
import '../../../core/resources/asset_managers.dart';
import '../../../core/resources/colors_managers.dart';

class custom_image_onboarding extends StatelessWidget {
  const custom_image_onboarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [

          SizedBox(
            height: double.infinity,


              width: double.infinity,

              child: Image.asset(
                  AssetManagers.onboardingimage,fit:  BoxFit.cover,alignment: Alignment.center,),
            ),

          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: HeightManagers.h250,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment(AlignmentManagers.x0, AlignmentManagers.y_1),
                    end: Alignment(AlignmentManagers.x0,AlignmentManagers.y1),
                    colors: [
                      ColorsManagers.blue2Color.withOpacity(0.04),
                      ColorsManagers.primaryColor,


                    ]),


              ),





            ),
          ),

        ],
      ),

    );
  }
}
