import 'package:flutter/material.dart';
import '../../../core/color/colors.dart';
import 'custom_Button.dart';
const String homeImage = "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/5cWXJJsPRuz85zAK7XXmu9Vfdu2.jpg";

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          height: screenHeight * 0.63,
          width: screenWidth,
          decoration:  const BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(homeImage),
            fit: BoxFit.cover,
          )),
        ),
        Positioned(
          bottom: 5,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomButtonWidget(
                icon: Icons.add,
                iconTitle: "My List",
              ),
              PlayButton(),
              CustomButtonWidget(
                iconTitle: "Info",
                icon: Icons.info_outline,
              )
            ],
          ),
        )
      ],
    );
  }
}

class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(kWhiteColor),
          padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 2))),
      onPressed: () {},
      icon: const Padding(
        padding: EdgeInsets.only(left: 4),
        child: Icon(
          Icons.play_arrow,
          size: 30,
          color: kBlackColor,
        ),
      ),
      label: const Padding(
        padding: EdgeInsets.only(right: 12),
        child: Text(
          "Play",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: kBlackColor,
          ),
        ),
      ),
    );
  }
}

