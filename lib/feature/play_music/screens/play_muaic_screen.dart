import 'package:flutter/material.dart';
import 'package:music/core/resources/font_managers.dart';

import 'package:music/core/resources/height_managers.dart';


import '../../../controller/home_screen_controller.dart';
import '../../../core/resources/alignment_managers.dart';
import '../../../core/resources/colors_managers.dart';
import '../widgets/custom_app_bar_play_music_screen.dart';
import '../widgets/custom_buttom_controller_play_music_screen.dart';
import '../widgets/custom_image_play_music_screen.dart';
import '../widgets/custom_tools_play_music_screen.dart';
import '../widgets/custpm_bottom_container_play_music_screen.dart';

class PlayMusicScreen extends StatelessWidget {
  const PlayMusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int index=ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(

      extendBodyBehindAppBar: true,
      appBar: CustomAppBarPlayMusicScreen(
        onPressed: (){

          HomePageController.navPlayMusicPageToPoP(context: context);

        },
      ),

     body: Container(height: MediaQuery.of(context).size.height,width:MediaQuery.of(context).size.width
       ,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(AlignmentManagers.x0_20, AlignmentManagers.y_0_98),
            end: Alignment(AlignmentManagers.x_0_20, AlignmentManagers.y0_98),
            colors: const [
              ColorsManagers.primaryColor,
              ColorsManagers.scenderyColor,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(index.toString(),style: TextStyle(
                color: ColorsManagers.whiteColor,
                fontSize: FontSize.f18
              ),),
              SizedBox(height: HeightManagers.h150,),
              CustomImagePlayMusicScreen(),
          
              SizedBox(height: HeightManagers.h30,),
              CustomButtomControllerPlayMusicScreen(
                value: 0.5,
                onChanged: (value){
          
                },
              )
               ,
              CustomToolsPlayMusicScreen(),
                CustpmBottomContainerPlayMusicScreen(),

                ]),
        ),
            ),


    );

  }
}
