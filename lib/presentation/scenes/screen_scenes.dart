import 'package:flutter/material.dart';
import 'package:netflix/presentation/scenes/widget/video_list_item.dart';

class ScreenScenes extends StatelessWidget {
  const ScreenScenes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(
          10,
          (index) => VideoListItem(
            index: index,
          ),
        ),
      ),
    );
  }
}
