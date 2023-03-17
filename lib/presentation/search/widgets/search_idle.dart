import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/constance/constace.dart';
import 'package:netflix/presentation/search/widgets/search_title.dart';

const imageUrl = "https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/wdwcOBMkt3zmPQuEMxB3FUtMio2.jpg";

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(
          searchTitle: "Top Searches",
        ),
        kHeight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (ctx, index) => const TopSearchItemsTile(),
              separatorBuilder: (ctx, index) => kHeightTwenty,
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchItemsTile extends StatelessWidget {
  const TopSearchItemsTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.31,
          height: screenWidth * 0.18,
          decoration: BoxDecoration(
              borderRadius: kBorderRadius10,
              image: const DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              )),
        ),
        kWidth,
        const Expanded(
          child: Text(
            "Captain America",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        CircleAvatar(
          radius: 20,
          backgroundColor: kWhiteColor.withOpacity(0.2),
          child: const CircleAvatar(
            radius: 18,
            backgroundColor: kBlackColor,
            child: Icon(
              Icons.play_arrow_rounded,
              size: 33,
              color: kWhiteColor,
            ),
          ),
        )
      ],
    );
  }
}
