
import 'package:flutter/material.dart';

import '../../../core/resources/colors_managers.dart';
import '../../../core/resources/font_managers.dart';

class CustomToolsPlayMusicScreen extends StatelessWidget {
  const CustomToolsPlayMusicScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 60,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorsManagers.textfiledColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(

            children: [
              Icon(Icons.favorite_border,color: ColorsManagers.whiteColor,size: FontSize.f18,)
              ,Text('Like',style: TextStyle(
                color: ColorsManagers.whiteColor,fontSize: FontSize.f12,
              ),),
            ],
          ),
          Column(

            children: [
              Icon(Icons.playlist_play,color: ColorsManagers.whiteColor,size: FontSize.f18,)
              ,Text('playlist',style: TextStyle(
                  color: ColorsManagers.whiteColor,fontSize: FontSize.f12
              ),),
            ],
          ),
          Column(

            children: [
              Icon(Icons.download,color: ColorsManagers.whiteColor,size: FontSize.f18,)
              ,Text('download',style: TextStyle(
                  color: ColorsManagers.whiteColor,fontSize: FontSize.f12
              ),),
            ],
          ),
          Column(

            children: [
              Icon(Icons.more_vert,color: ColorsManagers.whiteColor,size: FontSize.f18,)
              ,Text('more',style: TextStyle(
                  color: ColorsManagers.whiteColor,fontSize: FontSize.f12
              ),),
            ],
          )

        ],
      ),
    );
  }
}
