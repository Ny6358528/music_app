

import 'package:flutter/cupertino.dart' show BuildContext, CupertinoIcons;
import 'package:flutter/material.dart';
import 'package:music/core/resources/padding_managers.dart';

import '../../../core/resources/alignment_managers.dart';
import '../../../core/resources/asset_managers.dart';
import '../../../core/resources/colors_managers.dart';

import '../../../core/resources/font_managers.dart';
import '../../../core/resources/height_managers.dart';


import '../widget/custom_center_title.dart';
import '../widget/custom_recommanded_music.dart';
import '../widget/custom_text_field_home_page.dart';
import '../widget/custom_top_image_home_page.dart';
import '../widget/custom_top_title_home_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextFieldHomePage(),
              CustomTopTitleHomeScreen(),
              SizedBox(height: HeightManagers.h22),
              CustomTopImageHomePage(
                musicName: 'musicName',
                singerName: 'singerName',
              ),
          CustomCenterTitle(
            title: 'Recommanded music',
          ),
          SizedBox(height: HeightManagers.h22,),

              Container(
                padding: EdgeInsets.symmetric(horizontal: PaddingManagers.p10),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (context,index){
                    return SizedBox(height: 10,);
                  },
                  itemBuilder: (context,index){
                        return      CustomRecommandedMusic(
                    title: "kkkkk",
                    subTitle: "nnnnnn",
                  );},
                  itemCount: 10,
                ),
              )

           ],
          ),
        ),
      ),
    );
  }
}

