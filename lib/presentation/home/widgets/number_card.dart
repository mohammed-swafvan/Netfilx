import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/color/colors.dart';
import '../../../core/constance/constace.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.imageUrl, required this.index});
  final String imageUrl;
  final int index;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              height: screenWidth * 0.37,
              width: screenWidth * 0.09,
            ),
            Container(
              height: screenWidth * 0.37,
              width: screenWidth * 0.27,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
                borderRadius: kBorderRadius10,
              ),
            ),
          ],
        ),
        Positioned(
            left: 8,
            bottom: -23,
            child: BorderedText(
              strokeWidth: 2.0,
              strokeColor: kWhiteColor,
              child: Text(
                "${index + 1}",
                style: TextStyle(
                  fontFamily: kNumberFontFamily.fontFamily,
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: kBlackColor,
                ),
              ),
            ))
      ],
    );
  }
}
