import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/constance/constace.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final widgetList = [const SizedBox(), const _SmartDownloads(), BodySection(), const TrailingSection()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: "Downloads",
        ),
      ),
      body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          itemBuilder: (context, index) => widgetList[index],
          separatorBuilder: (context, index) => const SizedBox(height: 25),
          itemCount: widgetList.length),
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.settings,
          color: kWhiteColor,
        ),
        kWidth,
        Text("Smart Downloads")
      ],
    );
  }
}

class BodySection extends StatelessWidget {
  BodySection({super.key});

  final List imageUrlList = [
    "https://www.themoviedb.org/t/p/w188_and_h282_bestv2/rAGiXaUfPzY7CDEyNKUofk3Kw2e.jpg",
    "https://www.themoviedb.org/t/p/w188_and_h282_bestv2/ylRzw81gVNOujaDQvnDGOhXc5LZ.jpg",
    "https://www.themoviedb.org/t/p/w188_and_h282_bestv2/5ghUhebhuKpNAfbVrqJJqQZ3xFI.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const Text(
          "Introducing Downloads for You",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight,
        const Text(
          "We'll download a personalized selection of\nmovies and shows for you, So there's\nalways something to watch on your\ndevice",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        SizedBox(
          height: screenWidth,
          width: screenWidth,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: screenWidth * 0.37,
                backgroundColor: Colors.grey.withOpacity(0.4),
              ),
              DownloadImageWidget(
                imageUrlList: imageUrlList[0],
                padding: const EdgeInsets.only(left: 180, top: 50),
                angleRotation: 20,
                size: Size(screenWidth * 0.32, screenWidth * 0.47),
              ),
              DownloadImageWidget(
                imageUrlList: imageUrlList[1],
                padding: const EdgeInsets.only(right: 180, top: 50),
                angleRotation: -20,
                size: Size(screenWidth * 0.32, screenWidth * 0.47),
              ),
              DownloadImageWidget(
                imageUrlList: imageUrlList[2],
                padding: const EdgeInsets.only(top: 20),
                size: Size(screenWidth * 0.37, screenWidth * 0.57),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class TrailingSection extends StatelessWidget {
  const TrailingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: kButtonColorBlue,
            onPressed: () {},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Set Up",
                style: TextStyle(color: kWhiteColor, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kHeight,
        MaterialButton(
          color: kWhiteColor.withOpacity(0.2),
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "Find More to Download",
              style: TextStyle(color: kWhiteColor, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

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
            image: DecorationImage(image: NetworkImage(imageUrlList), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
