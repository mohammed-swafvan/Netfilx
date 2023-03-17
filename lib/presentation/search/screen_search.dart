import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/constance/constace.dart';
import 'package:netflix/presentation/search/widgets/search_idle.dart';
import 'package:netflix/presentation/search/widgets/search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              padding: const EdgeInsets.all(10),
              backgroundColor: kWhiteColor.withOpacity(0.2),
              itemSize: 25,
              prefixIcon: Icon(
                CupertinoIcons.search,
                color: kWhiteColor.withOpacity(0.4),
              ),
              suffixIcon: Icon(
                CupertinoIcons.xmark_circle_fill,
                color: kWhiteColor.withOpacity(0.4),
              ),
              style: const TextStyle(color: kWhiteColor),
            ),
            kHeightTwenty,
            const Expanded(child: SearchResult())
          ],
        ),
      ),
    );
  }
}
