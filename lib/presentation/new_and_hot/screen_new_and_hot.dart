import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/constance/constace.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix/presentation/new_and_hot/widgets/everyones_watching_widget.dart';
import '../../application/hot_and_new/hot_and_new_bloc.dart';

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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
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
          ),
          body: const TabBarView(
            children: [
              ComingSoonList(key: Key('comingsoon')),
              EveryOneWatchingList(key: Key('everyone_watching'))
            ],
          )),
    );
  }
}

class ComingSoonList extends StatelessWidget {
  const ComingSoonList({super.key});
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context).add(const LoadDataInComingSoon());
    });
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return RefreshIndicator(
      onRefresh: () async{
        BlocProvider.of<HotAndNewBloc>(context).add(const LoadDataInComingSoon());
      },
      child: BlocBuilder<HotAndNewBloc, HotAndNewState>(
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
                size: 30,
              ),
            );
          } else if (state.comingSoonList.isEmpty) {
            return const Center(
              child: Text("Empty"),
            );
          } else {
            return ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              children: List.generate(state.comingSoonList.length, (index) {
                final movie = state.comingSoonList[index];
                if (movie.id == null) {
                  return const SizedBox();
                }
                String month = '';
                String day = '';
                try {
                  final date = DateTime.tryParse(movie.releaseDate!);
                  final formatedDate = DateFormat.yMMMMd('en_US').format(date!);
                  month = formatedDate.split(' ').first.substring(0, 3).toUpperCase();
                  day = movie.releaseDate!.split('-')[1];
                } catch (_) {
                  month = '';
                  day = '';
                }
    
                return ComingSoonWidget(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  id: movie.id.toString(),
                  month: month,
                  day: day,
                  backDropPath: '$imageAppentUrl${movie.backdropPath}',
                  movieName: movie.originalTitle ?? "No Title",
                  overview: movie.overview ?? "No Overview",
                );
              }),
            );
          }
        },
      ),
    );
  }
}

class EveryOneWatchingList extends StatelessWidget {
  const EveryOneWatchingList({super.key});
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBloc>(context).add(const LoadDataInEveryOneWatching());
    });
    return RefreshIndicator(
      onRefresh: () async{
        BlocProvider.of<HotAndNewBloc>(context).add(const LoadDataInEveryOneWatching());
      },
      child: BlocBuilder<HotAndNewBloc, HotAndNewState>(
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
                size: 30,
              ),
            );
          } else if (state.everyOneWatchingList.isEmpty) {
            return const Center(
              child: Text("Empty"),
            );
          } else {
            return ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              children: List.generate(state.everyOneWatchingList.length, (index) {
                final movie = state.everyOneWatchingList[index];
                if (movie.id == null) {
                  return const SizedBox();
                }
                final tv = state.everyOneWatchingList[index];
                return EveryonesWatchingWidget(
                    backDropPath: '$imageAppentUrl${tv.backdropPath}',
                    movieName: tv.originalName ?? "No title",
                    overview: tv.overview ?? "No overview");
              }),
            );
          }
        },
      ),
    );
  }
}
