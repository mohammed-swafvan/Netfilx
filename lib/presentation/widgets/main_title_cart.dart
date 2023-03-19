import 'package:flutter/material.dart';
import '../../core/constance/constace.dart';
import 'main_card.dart';
import 'main_title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({super.key, required this.cardTitle, required this.posterList});

  final String cardTitle;
  final List<String> posterList;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainTitle(title: cardTitle),
          kHeight,
          LimitedBox(
            maxHeight: screenWidth * 0.37,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                posterList.length,
                (index) => MainCard(imageUrl: posterList[index]),
              ),
            ),
          ),
          kHeightTwenty,
        ],
      ),
    );
  }
}
