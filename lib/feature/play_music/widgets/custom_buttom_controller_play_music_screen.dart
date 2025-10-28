
import 'package:flutter/material.dart';

import '../../../core/resources/colors_managers.dart';

class CustomButtomControllerPlayMusicScreen extends StatelessWidget {
  const CustomButtomControllerPlayMusicScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(Icons.shuffle,color: ColorsManagers.whiteColor,size: 40,),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)

                ,gradient: LinearGradient(
                begin: Alignment(0.0, -1),
                end: Alignment(0.0, 1),

                colors: [

              ColorsManagers.selectedIconColor,
              ColorsManagers.textfiledColor


            ])
            ),

            child: Icon(Icons.skip_previous,color: ColorsManagers.whiteColor,size: 40,)),
        CircleAvatar(
            radius: 40,
            backgroundColor: ColorsManagers.textfiledColor,
            child: Icon(Icons.pause,color: ColorsManagers.whiteColor,size: 40,)),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)

              ,gradient: LinearGradient(
              begin: Alignment(0.0, -1),
              end: Alignment(0.0, 1),
              colors: [
            ColorsManagers.selectedIconColor,
            ColorsManagers.textfiledColor


          ])
          ),

          child: Icon(Icons.skip_next,color: ColorsManagers.whiteColor,size: 40,),),
        Icon(Icons.repeat,color: ColorsManagers.whiteColor,size: 40,),





      ],
    );
  }
}
