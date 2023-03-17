import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.iconTitle,
    required this.icon,
  });
  final String iconTitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWhiteColor,
          size: 27,
        ),
        Text(
          iconTitle,
          style: TextStyle(
            fontSize: 12,
            color: kWhiteColor.withOpacity(0.7),
          ),
        ),
      ],
    );
  }
}
