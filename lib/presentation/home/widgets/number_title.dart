import 'package:flutter/material.dart';

import '../../../core/constance/constace.dart';
import '../../widgets/main_title.dart';
import 'number_card.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    super.key,
    required this.screenWidth,
    required this.cardTitle,
    required this.cardUrl,
  });

  final double screenWidth;
  final String cardTitle;
  final String cardUrl;

  @override
  Widget build(BuildContext context) {
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
                    10,
                    (index) => NumberCard(
                          imageUrl: cardUrl,
                          index: index,
                        ))),
          ),
          kHeightTwenty,
        ],
      ),
    );
  }
}
