import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/constance/constace.dart';

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kHeight,
        Row(
          children: const [
            Icon(
              Icons.settings,
              color: kWhiteColor,
            ),
            kWidth,
            Text("Smart Downloads")
          ],
        ),
      ],
    );
  }
}
