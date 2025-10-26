
import 'package:flutter/material.dart';

import 'package:music/core/resources/width_mangers.dart';

import '../../../core/resources/asset_managers.dart';
import '../../../core/resources/colors_managers.dart';
import '../../../core/resources/font_managers.dart';
import '../../../core/resources/radius_managers.dart';

class CustomTopImageHomePage extends StatelessWidget {
  const CustomTopImageHomePage({
    super.key, required this.musicName, required this.singerName,
  });
final String musicName;
final String singerName;
  @override
  Widget build(BuildContext context) {
    return Container(
   height: 205,

          child: Padding(
            padding:  EdgeInsets.symmetric(
              horizontal: 22,
            ),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(RaduisManagers.r10),
                        child: Image(
                          image: AssetImage(AssetManagers.homepageimage),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    Text(
                      musicName,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: FontSize.f15,
                        color: ColorsManagers.whiteColor,
                      ),
                    ),
                    Text(
                      singerName,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: FontSize.f12,
                        color: ColorsManagers.whiteColor,
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: WidthMangers.w17);
              },
              itemCount: 3,
            ),
          ),


    );
  }
}
