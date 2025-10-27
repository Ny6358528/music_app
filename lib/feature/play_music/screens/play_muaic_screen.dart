import 'package:flutter/material.dart';

import '../../../core/resources/alignment_managers.dart';
import '../../../core/resources/colors_managers.dart';
import '../widgets/custom_app_bar_play_music_screen.dart';

class PlayMusicScreen extends StatelessWidget {
  const PlayMusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
       return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBarPlayMusicScreen(),
      body:  Container(
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
      ),
    );
  }
}
