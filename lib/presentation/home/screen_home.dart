import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/Home/home_bloc.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/constance/constace.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/presentation/home/widgets/background_card.dart';
import 'package:netflix/presentation/home/widgets/number_title.dart';
import 'package:netflix/presentation/widgets/main_title_cart.dart';

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
                BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (state.hasError) {
                      return Center(
                        child: Icon(
                          Icons.wifi_off,
                          color: kWhiteColor.withOpacity(0.5),
                          size: 40,
                        ),
                      );
                    }

                    //released passed year
                    final releasedPasedYear = state.pastYearMovieList.map((mov) {
                      return '$imageAppentUrl${mov.posterPath}';
                    }).toList();

                    //released passed year
                    final trendingNow = state.trendingNowList.map((mov) {
                      return '$imageAppentUrl${mov.posterPath}';
                    }).toList();
                    trendingNow.shuffle();

                    //top 10
                    final topTen = state.trendingTvList.map((mov) {
                      return '$imageAppentUrl${mov.posterPath}';
                    }).toList();

                    // tense dramas
                    final tenseDramas = state.tenseDaramasList.map((mov) {
                      return '$imageAppentUrl${mov.posterPath}';
                    }).toList();
                    tenseDramas.shuffle();

                    // south indian
                    final southIndian = state.southIndianList.map((mov) {
                      return '$imageAppentUrl${mov.posterPath}';
                    }).toList();
                    southIndian.shuffle();

                    return RefreshIndicator(
                      onRefresh: () async{
                        BlocProvider.of<HomeBloc>(context).add(const GetHomeScreendata());
                      },
                      child: ListView(
                        children: [
                          const BackgroundCard(),
                          kHeight,
                          MainTitleCard(
                            cardTitle: "Released in the Past Year",
                            posterList: releasedPasedYear.sublist(0, 10),
                          ),
                          MainTitleCard(
                            cardTitle: "Trending Now",
                            posterList: trendingNow.sublist(0, 10),
                          ),
                          NumberTitleCard(
                            screenWidth: screenWidth,
                            cardTitle: "Top 10 TV Shows in India Today",
                            cardUrl: topTen.sublist(0, 10),
                          ),
                          MainTitleCard(
                            cardTitle: "International TV Dramas",
                            posterList: tenseDramas.sublist(0, 10),
                          ),
                          MainTitleCard(
                            cardTitle: "Hollywood Movie",
                            posterList: southIndian.sublist(0, 10),
                          ),
                        ],
                      ),
                    );
                  },
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
