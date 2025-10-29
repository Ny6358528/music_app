
import 'package:flutter/material.dart';

import 'package:music/core/resources/width_mangers.dart';


import '../../../core/resources/colors_managers.dart';
import '../../../core/resources/font_managers.dart';
import '../../../core/resources/radius_managers.dart';
import '../../../models/quranModels.dart';

class CustomTopImageHomePage extends StatelessWidget {
  const CustomTopImageHomePage( {
    super.key, required this.quranModels,required this.onTap,
  });
final  List<QuranModels> quranModels;
  final Function(int index) onTap;
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
                  onTap: (){
                    onTap(index);
                  },

                  child: Column(
                    children: [

                         Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(RaduisManagers.r10),
                            child: Image(
                              image: AssetImage(quranModels[index].image),
                              fit: BoxFit.cover,height: 160,width: 160,
                            ),
                          ),
                        ),


                      Text(
                        quranModels[index].Quran,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: FontSize.f15,
                          color: ColorsManagers.whiteColor,
                        ),
                      ),
                      Text(
                        quranModels[index].reading,
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
