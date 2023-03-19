import 'package:flutter/material.dart';
import 'package:netflix/presentation/downloads/widgets/body_section.dart';
import 'package:netflix/presentation/downloads/widgets/smart_download.dart';
import 'package:netflix/presentation/downloads/widgets/trailing_section.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});
  final widgetList = [
    const SmartDownloads(),
    const BodySection(),
    const TrailingSection()
  ];

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
