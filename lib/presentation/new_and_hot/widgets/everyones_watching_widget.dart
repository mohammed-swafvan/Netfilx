import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/constance/constace.dart';

const String imageUrlEveryonesWatch = "https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/9Rq14Eyrf7Tu1xk0Pl7VcNbNh1n.jpg";

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({super.key, required this.screenWidth, required this.screenHeight});

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth * 0.15,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: screenHeight * 0.24,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(imageUrlEveryonesWatch),
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
                "PLANE",
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
                  Icons.near_me_outlined,
                  color: kWhiteColor,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: kWhiteColor,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_arrow,
                  color: kWhiteColor,
                ),
              ),
            ],
          ),
          Text(
            "After a heroic job of successfully landing his storm-damaged aircraft in a war zone, a fearless pilot finds himself between the agendas of multiple militias planning to take the plane and its passengers hostage.",
            style: TextStyle(color: kWhiteColor.withOpacity(0.4)),
          ),
          kHeightTwenty,
        ],
      ),
    );
  }
}
