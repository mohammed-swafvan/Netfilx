import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/constance/constace.dart';
import 'package:netflix/presentation/home/widgets/background_card.dart';
import 'package:netflix/presentation/home/widgets/number_title.dart';
import 'package:netflix/presentation/widgets/main_title_cart.dart';

const String imageUrlOne = "https://www.themoviedb.org/t/p/w440_and_h660_face/d9nBoowhjiiYc4FBNtQkPY7c11H.jpg";
const String imageUrlTwo = "https://www.themoviedb.org/t/p/w440_and_h660_face/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg";
const String imageUrlThree = "https://www.themoviedb.org/t/p/w440_and_h660_face/8QVbWBv94BAT9u1q9uJccwOxMzt.jpg";
const String imageUrlFour = "https://www.themoviedb.org/t/p/w440_and_h660_face/kuf6dutpsT0vSVehic3EZIqkOBt.jpg";
const String imageUrlFive = "https://www.themoviedb.org/t/p/w440_and_h660_face/5C9rerMqV1X0jnRdbbsM1BswVI2.jpg";
const String imageUrlSix = "https://www.themoviedb.org/t/p/w440_and_h660_face/uMMIeMVk1TCG3CZilpxbzFh0JKT.jpg";

ValueNotifier<bool> scrollingNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollingNotifier,
        builder: (context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollingNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollingNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: [
                    const BackgroundCard(),
                    kHeight,
                    const MainTitleCard(cardTitle: "Released in the Past Year", imageUrl: imageUrlOne),
                    const MainTitleCard(cardTitle: "Trending Now", imageUrl: imageUrlTwo),
                    NumberTitleCard(
                      screenWidth: screenWidth,
                      cardTitle: "Top 10 TV Shows in India Today",
                      cardUrl: imageUrlOne,
                    ),
                    const MainTitleCard(cardTitle: "International TV Dramas", imageUrl: imageUrlThree),
                    const MainTitleCard(cardTitle: "New Releases", imageUrl: imageUrlFour),
                    const MainTitleCard(cardTitle: "Tense Dramas", imageUrl: imageUrlFive)
                  ],
                ),
                Container(),
                scrollingNotifier.value
                    ? Positioned(
                        top: screenHeight * 0.06,
                        child: AnimatedContainer(
                          duration: const Duration(microseconds: 2000),
                          color: kBlackColor.withOpacity(0.3),
                          height: screenHeight * 0.04,
                          width: screenWidth,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("TV Shows", style: kHomeTitleStyle),
                                Text(
                                  "Movies",
                                  style: kHomeTitleStyle,
                                ),
                                Text(
                                  "Categoris",
                                  style: kHomeTitleStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : kHeight,
                Container(
                  color: kBlackColor.withOpacity(0.3),
                  height: screenHeight * 0.06,
                  width: screenWidth,
                  child: Row(
                    children: [
                      Image.network(
                        "https://www.freepnglogos.com/uploads/netflix-logo-circle-png-5.png",
                        width: 70,
                        height: 70,
                      ),
                      const Spacer(),
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
                      kWidth,
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
