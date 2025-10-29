
import 'package:flutter/material.dart';

import '../../../core/resources/colors_managers.dart';
import '../../../core/resources/font_managers.dart';
import '../../../core/resources/radius_managers.dart';
import '../../../core/resources/string_managers.dart';
import '../../../core/resources/width_mangers.dart';

class CustomAppBarPlayMusicScreen extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarPlayMusicScreen({
    super.key, required this.onPressed,
  });
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Icon(Icons.share_rounded  ,color: ColorsManagers.whiteColor,size: RaduisManagers.r30,),
        SizedBox(width:WidthMangers.w21),
        Icon(Icons.more_vert_rounded ,color: ColorsManagers.whiteColor,size: RaduisManagers.r30,),
      ],
      title: Text(StringManagers.nowplaying,
        style: TextStyle(
            fontSize: FontSize.f18,
            fontWeight: FontWeight.w500,
            color: ColorsManagers.whiteColor
        ),

      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      leading:IconButton(onPressed:onPressed , icon: Icon(Icons.arrow_back_ios_rounded,color: ColorsManagers.whiteColor,size: RaduisManagers.r30,),)
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
