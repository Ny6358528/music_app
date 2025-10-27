
import 'package:flutter/material.dart';

import 'package:music/core/resources/width_mangers.dart';


import '../../../core/resources/colors_managers.dart';
import '../../../core/resources/font_managers.dart';
import '../../../core/resources/radius_managers.dart';
import '../../../models/songsModels.dart';

class CustomTopImageHomePage extends StatelessWidget {
  const CustomTopImageHomePage({
    super.key, required this.songsModels,required this.onTap,
  });
final  SongsModels songsModels;
  final GestureTapCallback? onTap;
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
                return GestureDetector(
                  onTap: onTap,

                  child: Column(
                    children: [

                         Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(RaduisManagers.r10),
                            child: Image(
                              image: AssetImage(songsModels.image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),


                      Text(
                        songsModels.song,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: FontSize.f15,
                          color: ColorsManagers.whiteColor,
                        ),
                      ),
                      Text(
                        songsModels.singer,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: FontSize.f12,
                          color: ColorsManagers.whiteColor,
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(width: WidthMangers.w17);
              },
              itemCount: 3,
            ),

          )

    );
  }
}
