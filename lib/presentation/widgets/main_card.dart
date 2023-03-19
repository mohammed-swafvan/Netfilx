import 'package:flutter/material.dart';
import 'package:netflix/core/constance/constace.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: screenWidth * 0.35,
      width: screenWidth * 0.27,
      decoration: BoxDecoration(
        image:
            DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
        borderRadius: kBorderRadius10,
      ),
    );
  }
}
