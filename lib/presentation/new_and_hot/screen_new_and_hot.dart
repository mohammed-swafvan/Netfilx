import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/constance/constace.dart';
import 'package:netflix/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix/presentation/new_and_hot/widgets/everyones_watching_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: AppBar(
              leadingWidth: screenWidth * 0.6,
              leading: const Text(
                "New & Hot",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  size: 30,
                  color: kWhiteColor,
                ),
                kWidth,
                Container(
                  color: Colors.blue,
                  height: 28,
                  width: 28,
                ),
              ],
              bottom: TabBar(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  isScrollable: true,
                  indicatorWeight: 0.05,
                  indicator: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: kBorderRadius30,
                  ),
                  labelColor: kBlackColor,
                  unselectedLabelColor: kWhiteColor,
                  labelStyle: kTapBarTitle,
                  tabs: const [
                    Tab(text: "🍿 Coming Soon"),
                    Tab(text: "👀 Everyone's Watching"),
                  ]),
            ),
          ),
          body: TabBarView(
            children: [
              buildcomingSoon(context),
              buildEveryonesWatching(context),
            ],
          )),
    );
  }

  Widget buildcomingSoon(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      children: List.generate(
        10,
        (index) => ComingSoonWidget(screenWidth: screenWidth, screenHeight: screenHeight),
      ),
    );
  }

  Widget buildEveryonesWatching(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return ListView(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      shrinkWrap: true,
      children: List.generate(
        10,
        (index) => EveryonesWatchingWidget(screenWidth: screenWidth, screenHeight: screenHeight),
      ),
    );
  }
}
