
import 'package:flutter/material.dart';
import 'package:music/core/resources/font_managers.dart';
import 'package:music/core/resources/radius_managers.dart';

import '../../../core/resources/alignment_managers.dart';
import '../../../core/resources/colors_managers.dart';

class CustomButtomControllerPlayMusicScreen extends StatelessWidget {
  const CustomButtomControllerPlayMusicScreen({
    super.key,required this.onChanged, required this.value,
  });
  final ValueChanged<double> onChanged;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.shuffle,color: ColorsManagers.whiteColor,size: 40,),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(RaduisManagers.r20)

                    ,gradient: LinearGradient(
                    begin: Alignment(AlignmentManagers.x0, AlignmentManagers.y_1),
                    end: Alignment(AlignmentManagers.x0, AlignmentManagers.y1),

                    colors: [

                  ColorsManagers.selectedIconColor,
                  ColorsManagers.textfiledColor


                ])
                ),

                child: Icon(Icons.skip_previous,color: ColorsManagers.whiteColor,size: 40,)),
            CircleAvatar(
                radius: RaduisManagers.r40,
                backgroundColor: ColorsManagers.textfiledColor,
                child: Icon(Icons.pause,color: ColorsManagers.whiteColor,size: FontSize.f40,)),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(RaduisManagers.r20)

                  ,gradient: LinearGradient(
                  begin: Alignment(AlignmentManagers.x0, AlignmentManagers.y_1),
                  end: Alignment(AlignmentManagers.x0, AlignmentManagers.y1),

                  colors: [
                ColorsManagers.selectedIconColor,
                ColorsManagers.textfiledColor


              ])
              ),

              child: Icon(Icons.skip_next,color: ColorsManagers.whiteColor,size: FontSize.f40),),
            Icon(Icons.repeat,color: ColorsManagers.whiteColor,size: FontSize.f40,),





          ],
        ),
        SliderTheme(
          data: SliderThemeData(
            thumbShape: RoundSliderThumbShape()
          ),
          child: Slider(value: value, onChanged: onChanged,
          activeColor: ColorsManagers.textfiledColor,
            inactiveColor: ColorsManagers.blue3Color,

          ),
        )
      ],
    );
  }
}
