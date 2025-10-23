import 'package:flutter/material.dart';
import 'package:music/core/resources/height_managers.dart';
import 'package:music/core/resources/string_managers.dart';

import '../../../controller/onboarding_controller.dart';
import '../../../core/resources/alignment_managers.dart';
import '../../../core/resources/asset_managers.dart';
import '../../../core/resources/colors_managers.dart';

import '../../../core/resources/routes_managers.dart';
import '../widget/custom_button_onboarding.dart';
import '../widget/custom_image_onboarding.dart';
import '../widget/custom_subtitle_onboarding.dart';
import '../widget/custom_title_onboarding.dart';

class OnBoardingscreen extends StatelessWidget {
  const OnBoardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:  Container(
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
    child: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: HeightManagers.h90,),
          CustomTitleOnboarding(),
          SizedBox(height: HeightManagers.h11),
          custom_subtitle_onboarding(),
          SizedBox(height: HeightManagers.h11),
          customButtonOnboarding(
            onPressed: (){         OnBoardingController.navigartortohomepage(context: context  );},
            text: StringManagers.getStarted,
          ),
          custom_image_onboarding()

        ],
      ),
    )
    ),
    );
  }
}


