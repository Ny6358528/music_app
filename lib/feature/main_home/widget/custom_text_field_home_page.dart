import 'package:flutter/material.dart';

import '../../../core/resources/colors_managers.dart';
import '../../../core/resources/font_managers.dart';
import '../../../core/resources/padding_managers.dart';
import '../../../core/resources/radius_managers.dart';
import '../../../core/resources/string_managers.dart';

class CustomTextFieldHomePage extends StatelessWidget {
  const CustomTextFieldHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(
          top: PaddingManagers.ptop55,
          left: PaddingManagers.pleft33,
          right: PaddingManagers.pright31),
      child: TextField(
        
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(PaddingManagers.p10),
          prefixIcon: const Icon(Icons.search, color: ColorsManagers.whiteColor),
          hintText: StringManagers.searchSong,
          hintStyle: const TextStyle(color: ColorsManagers.whiteColor, fontSize: FontSize.f12),
          filled: true,
          fillColor: ColorsManagers.textfiledColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(RaduisManagers.r50),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(RaduisManagers.r50),
          ),
        ),
      ),
    );
  }
}
