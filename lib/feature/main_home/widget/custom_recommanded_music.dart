import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/resources/asset_managers.dart';
import '../../../core/resources/colors_managers.dart';
import '../../../core/resources/font_managers.dart';
import '../../../models/quranModels.dart';

class CustomRecommandedMusic extends StatelessWidget {
  const CustomRecommandedMusic({
    super.key,
    required this.quranModel,
  });
  final QuranModels quranModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(quranModel.image)),
      title: Text(
        quranModel.Quran,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: FontSize.f15,
            color: ColorsManagers.whiteColor),
      ),
      subtitle: Text(
        quranModel.reading,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: FontSize.f12,
            color: ColorsManagers.textfiledColor),
      ),
      trailing: const Icon(CupertinoIcons.heart, color: Colors.white),
    );
  }
}
