import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/constance/constace.dart';

class ComingSoonWidget extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String backDropPath;
  final String movieName;
  final String overview;

  const ComingSoonWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.id,
    required this.month,
    required this.day,
    required this.backDropPath,
    required this.movieName,
    required this.overview,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: screenWidth * 0.15,
          height: screenHeight * 0.47,
          child: Column(
            children: [
              Text(
                month,
                style: TextStyle(
                  color: kWhiteColor.withOpacity(0.6),
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              Text(
                day,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontFamily: kNumberFontFamily.fontFamily,
                  fontSize: 32,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: screenWidth * 0.78,
          height: screenHeight * 0.47,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: screenHeight * 0.22,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(backDropPath),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: kBorderRadius10,
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    right: 10,
                    child: CircleAvatar(
                      backgroundColor: kBlackColor.withOpacity(0.5),
                      radius: 16,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.volume_off,
                          size: 16,
                          color: kWhiteColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Text(
                      movieName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: kWhiteColor.withOpacity(0.6),
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        fontFamily: GoogleFonts.aclonica().fontFamily,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none_outlined,
                      color: kWhiteColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.info_outline,
                      color: kWhiteColor,
                    ),
                  ),
                ],
              ),
              kHeight,
              Text(
                "Coming on $day $month",
                style: kHomeTitleStyle,
              ),
              kHeight,
              Expanded(
                child: Text(
                  overview,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: kWhiteColor.withOpacity(0.4)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
