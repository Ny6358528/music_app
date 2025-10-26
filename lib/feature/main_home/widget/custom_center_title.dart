
import 'package:flutter/material.dart';

import '../../../core/resources/colors_managers.dart';
import '../../../core/resources/font_managers.dart';

class CustomCenterTitle extends StatelessWidget {
  const CustomCenterTitle(  {
    super.key, required  this.title,
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Text(title,style: TextStyle(
          color: ColorsManagers.whiteColor,
          fontSize: FontSize.f18,
          fontWeight: FontWeight.w500
      ),),
    );
  }
}
