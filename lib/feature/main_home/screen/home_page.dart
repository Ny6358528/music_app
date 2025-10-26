import 'package:flutter/material.dart';
import 'package:music/core/resources/radius_managers.dart';

import '../../../core/resources/alignment_managers.dart';
import '../../../core/resources/colors_managers.dart';
import '../../../core/resources/padding_managers.dart';
import '../../../core/resources/string_managers.dart';
import '../widget/custom_text_field_home_page.dart';

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
              ColorsManagers.scenderyColor
            ],
          ),
        ),
        child: Column(
          children: [
            CustomTextFieldHomePage(),
          ],
        ),
      ),
    );
  }
}

