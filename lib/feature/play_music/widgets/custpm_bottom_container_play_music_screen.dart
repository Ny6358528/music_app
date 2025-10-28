
import 'package:flutter/material.dart';
import 'package:music/core/resources/height_managers.dart';
import 'package:music/core/resources/padding_managers.dart';
import 'package:music/core/resources/width_mangers.dart';

import '../../../core/resources/colors_managers.dart';
import '../../../core/resources/font_managers.dart';

class CustpmBottomContainerPlayMusicScreen extends StatelessWidget {
  const CustpmBottomContainerPlayMusicScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(PaddingManagers.p20),
      child: Container(
        width: double.infinity,
        height: HeightManagers.h100,
        decoration: BoxDecoration(
            color: ColorsManagers.textfiledColor
        ),
        child: Padding(
          padding: const EdgeInsets.all(PaddingManagers.p8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Up Next",style: TextStyle(color: ColorsManagers.whiteColor,fontSize: FontSize.f12),),
                  Text("Queue",style: TextStyle(color: ColorsManagers.whiteColor,fontSize: FontSize.f12),),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                children: [

                  Image(image: AssetImage('assets/images/imageplaymusicpage.png'),height: HeightManagers.h55,width: WidthMangers.w55,),
                  SizedBox(width: WidthMangers.w13,),
                  Column(
                    children: [
                      Text("sing me to sleep",style: TextStyle(
                          color: ColorsManagers.whiteColor,fontSize: FontSize.f15
                      ),),

                      Text("alan walker",style: TextStyle(
                          color: ColorsManagers.whiteColor,fontSize: FontSize.f12
                      ),),


                    ],
                  ),
                  Spacer(),
                  Icon(Icons.skip_next,color: ColorsManagers.whiteColor,size: FontSize.f40),
                ],

              ),

            ],
          ),
        ),
      ),
    );
  }
}
