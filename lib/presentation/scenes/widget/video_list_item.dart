import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';

class VideoListItem extends StatelessWidget {
  const VideoListItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.volume_off_outlined,
                        size: 30,
                        color: kWhiteColor,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      CircleAvatar(
                        radius: 27,
                        backgroundImage:
                            NetworkImage("https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/wdwcOBMkt3zmPQuEMxB3FUtMio2.jpg"),
                      ),
                      VideoActions(icon: Icons.emoji_emotions, iconText: "LOL"),
                      VideoActions(icon: Icons.add, iconText: "My List"),
                      VideoActions(icon: Icons.near_me_outlined, iconText: "Share"),
                      VideoActions(icon: Icons.play_arrow_rounded, iconText: "Play"),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActions extends StatelessWidget {
  const VideoActions({super.key, required this.icon, required this.iconText});
  final IconData icon;
  final String iconText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Icon(
            icon,
            color: kWhiteColor,
            size: 32,
          ),
          const SizedBox(height: 5),
          Text(
            iconText,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
