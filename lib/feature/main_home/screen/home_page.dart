import 'package:flutter/material.dart';
import 'package:music/core/resources/asset_managers.dart';
import 'package:music/core/resources/font_managers.dart';
import 'package:music/core/resources/radius_managers.dart';

import '../../../core/resources/alignment_managers.dart';
import '../../../core/resources/colors_managers.dart';

import '../../../core/resources/height_managers.dart';
import '../../../core/resources/string_managers.dart';
import '../widget/custom_text_field_home_page.dart';
import '../widget/custom_top_image_home_page.dart';
import '../widget/custom_top_title_home_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(AlignmentManagers.x0_20, AlignmentManagers.y_0_98),
            end: Alignment(AlignmentManagers.x_0_20, AlignmentManagers.y0_98),
            colors: const [
              ColorsManagers.primaryColor,
              ColorsManagers.scenderyColor,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextFieldHomePage(),
            CustomTopTitleHomeScreen(),
            SizedBox(height: HeightManagers.h22),
            CustomTopImageHomePage(),
          ],
        ),
      ),
    );
  }
}
