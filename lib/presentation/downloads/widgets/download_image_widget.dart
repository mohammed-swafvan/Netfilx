import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/core/constance/constace.dart';

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget({
    super.key,
    required this.imageUrlList,
    this.angleRotation = 0,
    required this.padding,
    required this.size,
  });

  final String imageUrlList;
  final double angleRotation;
  final EdgeInsets padding;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Transform.rotate(
        angle: angleRotation * pi / 180,
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            borderRadius: kBorderRadius10,
            image: DecorationImage(
                image: NetworkImage(imageUrlList), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
