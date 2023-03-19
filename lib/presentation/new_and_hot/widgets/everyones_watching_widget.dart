import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/constance/constace.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  final String backDropPath;
  final String movieName;
  final String overview;

  const EveryonesWatchingWidget({
    super.key,
    required this.backDropPath,
    required this.movieName,
    required this.overview,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
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
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: kWhiteColor.withOpacity(0.6),
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                    fontFamily: GoogleFonts.aclonica().fontFamily,
                  ),
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
            overview,
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: kWhiteColor.withOpacity(0.4)),
          ),
          kHeightTwenty,
        ],
      ),
    );
  }
}
