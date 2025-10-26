import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/resources/asset_managers.dart';
import '../../../core/resources/colors_managers.dart';
import '../../../core/resources/font_managers.dart';

class CustomRecommandedMusic extends StatelessWidget {
  const CustomRecommandedMusic({
    super.key, required this.title, required this.subTitle,
  });
final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(AssetManagers.homepageimage)

      ),


      title:Text(title,style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: FontSize.f15,
          color: ColorsManagers.whiteColor
      ),) ,
      subtitle:Text(subTitle,style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: FontSize.f12,
          color: ColorsManagers.textfiledColor
      ),) ,
      trailing: Icon(CupertinoIcons.heart),

    );
  }
}
