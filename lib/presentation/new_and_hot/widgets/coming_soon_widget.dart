import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/constance/constace.dart';

const String imageUrlComingSoon = "https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/22z44LPkMyf5nyyXvv8qQLsbom.jpg";

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: screenWidth * 0.15,
          height: screenHeight * 0.42,
          child: Column(
            children: [
              Text(
                "APR",
                style: TextStyle(
                  color: kWhiteColor.withOpacity(0.6),
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              Text(
                "01",
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
          width: screenWidth * 0.8,
          height: screenHeight * 0.42,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: screenHeight * 0.22,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(imageUrlComingSoon),
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
                  Text(
                    "AMIGOS",
                    style: TextStyle(
                      color: kWhiteColor.withOpacity(0.6),
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                      fontFamily: GoogleFonts.aclonica().fontFamily,
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
                "Coming on 1 April",
                style: kHomeTitleStyle,
              ),
              kHeight,
              Text(
                "When a man discovers his two doppelgangers online, he finds new connections in life and love --but danger lurks when a hidden criminal past emerges.",
                style: TextStyle(color: kWhiteColor.withOpacity(0.4)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
