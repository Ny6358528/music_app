
import 'package:flutter/material.dart';

import '../../../core/resources/padding_managers.dart';

import '../../../models/quranModels.dart';
import 'custom_recommanded_music.dart';

class CustomRecommedMusicHome extends StatelessWidget {
  const CustomRecommedMusicHome( {
    super.key,required this.onTap, required this.QuranMode,
  });
  final Function( int index) onTap;
   final List<QuranModels>QuranMode;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: PaddingManagers.p10),
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        separatorBuilder: (context,index){
          return SizedBox(height: 10,);
        },
        itemBuilder: (context,index){
          return      InkWell(
            onTap: (){
              onTap(index);

            },
            child: CustomRecommandedMusic(
            quranModel:QuranMode[index] ,
            ),
          );},
        itemCount: QuranMode.length,
      ),
    );
  }
}

